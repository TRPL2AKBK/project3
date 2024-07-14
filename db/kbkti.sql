-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2024 pada 05.27
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`changes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `change_logs`
--

INSERT INTO `change_logs` (`id`, `user_id`, `changes`, `created_at`, `updated_at`) VALUES
(16, 99, '{\"image\":{\"old_value\":null,\"new_value\":\"Image\\/DV24yS9lv0vSQIehA9C2q0b2RLD61bdEfwquGAKh.png\"}}', '2024-06-26 03:24:01', '2024-06-26 03:24:01'),
(17, 99, '{\"name\":{\"old_value\":\"Superadmin\",\"new_value\":\"amir\"}}', '2024-06-26 19:43:15', '2024-06-26 19:43:15'),
(18, 99, '{\"name\":{\"old_value\":\"amir\",\"new_value\":\"Super Admin\"}}', '2024-06-26 19:44:51', '2024-06-26 19:44:51'),
(19, 1, '{\"image\":{\"old_value\":null,\"new_value\":\"Image\\/5E6cgACC4CCDsiDcrZZs4AD2LQhCBXc7hY84Uo6i.png\"}}', '2024-06-27 00:04:20', '2024-06-27 00:04:20'),
(20, 4, '{\"name\":{\"old_value\":\"dosen\",\"new_value\":\"tasa\"},\"email\":{\"old_value\":\"dosen@gmail.com\",\"new_value\":\"dosenhhhh@gmail.com\"},\"password\":{\"old_value\":\"$2y$12$oF65QStsu1O5vOidHxQcU.72KxjZK02raedGmkJ5Wc7I.nfqO1Z5e\",\"new_value\":\"$2y$12$KV8BvJmyEmAKhGg.p35fcONTqRpAGNE6Wg5XkmvrPi4avOIDMwB6e\"}}', '2024-06-27 00:05:33', '2024-06-27 00:05:33'),
(21, 4, '{\"password\":{\"old_value\":\"$2y$12$KV8BvJmyEmAKhGg.p35fcONTqRpAGNE6Wg5XkmvrPi4avOIDMwB6e\",\"new_value\":\"$2y$12$RtklcoPDqnwOX6tJYEVujORwa4C3jI8p1opmYjgb1tZ32oy4kJmre\"}}', '2024-06-28 09:58:53', '2024-06-28 09:58:53'),
(22, 4, '{\"name\":{\"old_value\":\"tasa\",\"new_value\":\"dosen\"}}', '2024-06-28 09:59:16', '2024-06-28 09:59:16'),
(23, 2, '{\"email\":{\"old_value\":\"kbk@gmail.com\",\"new_value\":\"penguruskbk@gmail.com\"}}', '2024-07-06 07:00:47', '2024-07-06 07:00:47'),
(24, 2, '{\"name\":{\"old_value\":\"ketua kbk\",\"new_value\":\"ALDE ALANDA\"}}', '2024-07-06 07:03:31', '2024-07-06 07:03:31'),
(25, 2, '{\"image\":{\"old_value\":null,\"new_value\":\"Image\\/NnSmdTeslOBDzQNLhBDM6xTtGt56xjgqz3BLZhTl.png\"}}', '2024-07-06 18:10:18', '2024-07-06 18:10:18'),
(26, 3, '{\"password\":{\"old_value\":\"$2y$12$HzNz4DE88BxNDEcNREnYve3QcYH6afK\\/W51QFCGrBYETU9DbJJ4LW\",\"new_value\":\"$2y$12$aDNXItkuZgGnekucJCSvyuGQFAYrvxRyhJXO1H03ioiCy08WYrwp6\"}}', '2024-07-07 07:13:44', '2024-07-07 07:13:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `kode_jurusan` varchar(30) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `kode_prodi` varchar(30) NOT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `nidn`, `nip`, `gender`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `email`) VALUES
(1, 'ALDE ALANDA, S.Kom, M.T', '0025088802', '198808252015041002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'alde@pnp.ac.id'),
(2, 'ALDO ERIANDA, M.T, S.ST', '003078904', '198907032019031015', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'aldo@pnp.ac.id'),
(3, 'CIPTO PRABOWO, S.T, M.T', '0002037410', '197403022008121001', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'cipto@pnp.ac.id'),
(4, 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', '198104152006041002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'deddy@pnp.ac.id'),
(5, 'DEFNI, S.Si, M.Kom', '0007128104', '198112072008122001', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'defni@pnp.ac.id'),
(6, 'DENI SATRIA, S.Kom, M.Kom', '0028097803', '197809282008121002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'dns1st@gmail.com'),
(7, 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', '198605092014042001', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'dwinymeidelfi@pnp.ac.id'),
(8, 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', '197809012008121001', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'ervan@pnp.ac.id'),
(9, 'FAZROL ROZI, M.Sc.', '0021078601', '19860721201012006', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'fazrol@pnp.ac.id'),
(10, 'FITRI NOVA, M.T, S.ST', '1029058502', '198505292014042001', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'fitrinova85@gmail.com'),
(11, 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', '196605101994031003', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'mooduto@pnp.ac.id'),
(12, 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', '197712022006041000', 'Laki-laki', 'EE', 'Teknik Elektro', '4EC', 'D4 - Teknik Elektronika', 'hendrickpnp77@gmail.com'),
(13, 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', '198204152012121002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'hidra@pnp.ac.id'),
(14, 'HUMAIRA, S.T, M.T', '0019038103', '198103192006042002', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'humaira@pnp.ac.id'),
(15, 'IKHSAN YUSDA PRIMA PUTRA, S.H., LL.M', '0001107505', '197510012006041002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', ''),
(16, 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', '198306252008012004', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'indri@pnp.ac.id'),
(17, 'MERI AZMI, S.T, M.Cs', '0029068102', '198106292006042001', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'meriazmi@gmail.com'),
(18, 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', '197804152000121002', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'rahmat@pnp.ac.id'),
(19, 'RASYIDAH, S.Si, M.M.', '0001067407', '197406012006042001', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'rasyidah@pnp.ac.id'),
(20, 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', '197801222009122002', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'rikaidmayanti@pnp.ac.id'),
(21, 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', '197007182008012010', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'ritaafyenni@pnp.ac.id'),
(22, 'RONAL HADI, S.T, M.Kom', '0029017603', '197601292002121001', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'ronalhadi@pnp.ac.id'),
(23, 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', ' 19880810 201903 1 012', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'taufikgusman@gmail.com'),
(24, 'YANCE SONATHA, S.Kom, M.T', '0029128003', '198012292006042001', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'sonatha.yance@gmail.com'),
(25, 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', '197601132006041002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'yuhefizar@pnp.ac.id'),
(26, 'YULHERNIWATI, S.Kom, M.T', '0019077609', '197607192008012017', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'yulherniwati@pnp.ac.id'),
(27, 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205', '199203052019032025', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'trilestari0503@gmail.com'),
(28, 'Fanni Sukma, S.ST., M.T', '0006069009', '199006062019032026', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'fannisukma@pnp.ac.id'),
(29, 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', '198802202019031009', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'andrefebrian@pnp.ac.id'),
(30, 'RONI PUTRA, S.Kom, M.T ', '0022078607', '198607222009121004', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'rn.putra@gmail.com'),
(31, 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', '19890529 202012 1 003', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'ardi.syawaldipa@gmail.com'),
(32, 'Harfebi Fryonanda, S.Kom., M.Kom', '0310119101', '19911110 202203 1 008', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'harfebi@pnp.ac.id'),
(33, 'Ideva Gaputra, S.Kom., M.Kom', '0012098808', '198809122022031006', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'idevagaputra@pnp.ac.id'),
(34, 'Yulia Jihan Sy, S.Kom., M.Kom', '1017078904', '19890717 202203 2 010', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'yulia@pnp.ac.id'),
(35, 'Andrew Kurniawan Vadreas, S.Kom., M.T	', '1021028702', '19870221 202203 1 001', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'andrew@pnp.ac.id'),
(36, 'YORI ADI ATMA, S.Pd., M.Kom', '2010059001', '19900510 202203 1 002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'yori@pnp.ac.id'),
(37, 'Dr. Ulya Ilhami Arsyah, S.Kom., M.Kom', '0130039101', '19910330 202203 1 004', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'ulya@pnp.ac.id'),
(38, 'Hendra Rotama, S.Pd., M.Sn', '0218068801', '19880618 202203 1 003', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'hendrarotama@pnp.ac.id'),
(39, 'Sumema, S.Ds., M.Ds', '0008069103', '19910608 202203 2 006', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'sumema@pnp.ac.id'),
(40, 'Raemon Syaljumairi, S.Kom., M.Kom', '0017078407', '19840717 201012 1 002', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'raemon_syaljumairi@pnp.ac.id'),
(41, 'Mutia Rahmi Dewi, S.Kom., M.Kom', '0004099601', '19960904 202203 2 018', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'mutiarahmi@pnp.ac.id'),
(42, 'Novi, S.Kom., M.T', '0001118611', '19861101 202203 2 003', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'novi@pnp.ac.id'),
(43, 'Rahmi Putri Kurnia, S.Kom., M.Kom', '0027089303', '19930827 202203 2 012', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'rahmiputri@pnp.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_kbk`
--

CREATE TABLE `dosen_kbk` (
  `id_dosenkbk` int(11) NOT NULL,
  `nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kbk` int(11) DEFAULT NULL,
  `id_jabatan_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen_kbk`
--

INSERT INTO `dosen_kbk` (`id_dosenkbk`, `nidn`, `id_kbk`, `id_jabatan_kbk`) VALUES
(1, '1017078904', 1, 1),
(2, '0025088802', 2, 1),
(3, '0009058601', 3, 1),
(4, '0218068801', 4, 1),
(5, '0008069103', 5, 3),
(6, '0013017604', 1, 2),
(7, '0029128003', 2, 2),
(8, '0010088805', 5, 2),
(9, '0018077099', 4, 2),
(86, '0002037410', 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_matakuliah`
--

CREATE TABLE `dosen_matakuliah` (
  `id_dosen_matakuliah` int(11) NOT NULL,
  `nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_smt_thn_akd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen_matakuliah`
--

INSERT INTO `dosen_matakuliah` (`id_dosen_matakuliah`, `nidn`, `id_matakuliah`, `id_smt_thn_akd`) VALUES
(1, '0218068801', 13, 3),
(2, '0218068801', 14, 3),
(3, '0218068801', 16, 3),
(4, '0218068801', 17, 3),
(5, '0218068801', 1, 3),
(6, '0218068801', 15, 3),
(7, '0001067407', 18, 3),
(8, '0001067407', 19, 3),
(9, '0001067407', 20, 3),
(10, '0001067407', 21, 3),
(11, '0001067407', 22, 3),
(12, '0001067407', 23, 3),
(13, '0021078601', 24, 3),
(14, '0021078601', 25, 3),
(15, '0021078601', 26, 3),
(16, '0021078601', 27, 3),
(17, '0021078601', 28, 3),
(18, '0021078601', 29, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_kbk`
--

CREATE TABLE `jabatan_kbk` (
  `id_jabatan_kbk` int(11) NOT NULL,
  `nama_jabatan_kbk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan_kbk`
--

INSERT INTO `jabatan_kbk` (`id_jabatan_kbk`, `nama_jabatan_kbk`) VALUES
(1, 'Ketua'),
(2, 'Sekretaris'),
(3, 'Anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_pimpinan`
--

CREATE TABLE `jabatan_pimpinan` (
  `id_jabatan_pimpinan` int(11) NOT NULL,
  `jabatan_pimpinan` varchar(20) NOT NULL,
  `kode_jabatan_pimpinan` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan_pimpinan`
--

INSERT INTO `jabatan_pimpinan` (`id_jabatan_pimpinan`, `jabatan_pimpinan`, `kode_jabatan_pimpinan`, `status`) VALUES
(1, 'Ketua Jurusan', 'KAJUR', '1'),
(2, 'Sekretaris Jurusan', 'SEKJUR', '1'),
(3, 'Koordinator Program ', 'KAPRODI', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `jurusan`) VALUES
(1, 'AN', 'Administrasi Niaga'),
(2, 'AK', 'Akuntansi'),
(3, 'BI', 'Bahasa Inggris'),
(4, 'EE', 'Teknik Elektro'),
(5, 'ME', 'Teknik Mesin'),
(6, 'SP', 'Teknik Sipil'),
(7, 'TI', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kbk`
--

CREATE TABLE `kbk` (
  `id_kbk` int(11) NOT NULL,
  `kode_kbk` varchar(50) NOT NULL,
  `nama_kbk` varchar(100) NOT NULL,
  `ketua_kbk` int(11) DEFAULT NULL,
  `sekretaris_kbk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kbk`
--

INSERT INTO `kbk` (`id_kbk`, `kode_kbk`, `nama_kbk`, `ketua_kbk`, `sekretaris_kbk`) VALUES
(1, 'SOFTAM', 'Center of Software Technology and Management', 1, 6),
(2, 'CAIT', 'Center of Artificial Intelligence Technology', 2, 7),
(3, 'Programming', 'Center of Programming', 3, 86),
(4, 'NCS', 'Center of Network and Cyber Security', 4, 9),
(5, 'Multimedia', 'Center of IT Infrastructure', 5, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `kode_kurikulum` varchar(20) NOT NULL,
  `nama_kurikulum` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `kode_kurikulum`, `nama_kurikulum`, `tahun`, `id_prodi`, `status`) VALUES
(1, 'KUR TRPL 2017', 'Kurikulum TRPL 2017', 2017, 20, '0'),
(2, 'KUR TRPL  2017 REV', 'Kurikulum TRPL 2017 Revisi', 2020, 20, '0'),
(3, 'KUR TRPL 2022', 'Kurikulum TRPL 2022', 2022, 20, '1'),
(4, 'KUR TRPL 2022 V.1', 'Kurikulum TRPL 2022 Versi 1', 2023, 20, '1'),
(5, 'KUR TRPL  2022 V.2', 'Kurikulum TRPL 2022 Versi 2', 2024, 20, '1'),
(6, 'KUR MI 2022', 'Kurikulum MI 2022', 2022, 18, '1'),
(7, 'KUR TK 2022', 'Kurikulum TK 2022', 2022, 19, '1'),
(8, 'KUR SI-TD 2022', 'Kurikulum SI-TD 2022', 2022, 21, '1'),
(9, 'KUR TK-SS 2022', 'Kurikulum TK-SS 2022', 2022, 22, '1'),
(10, 'KUR MI-P 2022', 'Kurikulum MI-P 2022', 2022, 23, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) UNSIGNED NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `kode_prodi` varchar(10) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `gender`) VALUES
(2, '1701091031', 'Wara Ulan Saputri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(3, '1701081035', 'Silvia Angraini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(4, '1701091033', 'Dea Annona Prayetno Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(5, '1701091018', 'Yulia Ramadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(6, '1701081027', 'Syahrul Gusti Hafendi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(7, '1701082019', 'Rendhika Aditya', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(8, '1701092022', 'Hexa Aristia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(9, '1701092016', 'Novelia Desrina Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(10, '1701091019', 'Fauziah Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(11, '1701092021', 'Ira Agustiana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(12, '1701081015', 'DEDE RAHMAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(13, '1701082012', 'Farhan Hafifi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(14, '1701081034', 'Zulmaidi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(15, '1701082017', 'HADITYA HANAFI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(16, '1701081010', 'Roberto Firman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(17, '1701091010', 'Yenni Wati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(18, '1701082013', 'PM RIEFKY MUHAMMAD FARHAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(19, '1701081029', 'Deo Febrino Mudri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(20, '1701082015', 'Ikhsanul Fajri Yodani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(21, '1701081032', 'Muhammad Yosazikri Ikhsan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(22, '1701091035', 'Chapri Ramadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(23, '1701091012', 'Isra Aini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(24, '1701081031', 'ANGGIE MEIFRIYAN PRATAMA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(25, '1701082026', 'Resti Pebriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(26, '1701091091', 'Indah Permata Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(27, '1701091034', 'Danny Atthaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(28, '1701091007', 'Ilham Marjalis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(29, '1701091002', 'Pratiwi Dwiyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(30, '1701091023', 'Fanny Laura', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(31, '1701091017', 'Rara Yulia Insani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(32, '1701091013', 'Arnila Cahya Febri Mendrofa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(33, '1701092030', 'Siti Sa\'adiyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(34, '1701092011', 'Aldo Serena', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(35, '1701091005', 'Sintia Agustin Padri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(36, '1701091004', 'Riri Silvani Dwi Putri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(37, '1701082025', 'Hidayaturrahman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(38, '1701092002', 'Rizka Putri Yulianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(39, '1701081038', 'Irfan Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(40, '1701092003', 'Dimas Septian Andaleh', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(41, '1701081036', 'Ririn Vamori', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(42, '1701091025', 'Dora Grestya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(43, '1701091009', 'Nilam Permata Bunda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(44, '1601082002', 'Yoga Yowanda Sugama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(45, '1701081001', 'Elfiza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(46, '1601082004', 'Muhamad Rival', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(47, '1701081003', 'Ilham Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(48, '1701091003', 'Rina Yuliana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(49, '1701092025', 'Fathrianda Komala Isral', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(50, '1701091008', 'Sahrul Efendi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(51, '1701091011', 'Intan Rahma Wati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(52, '1701091030', 'Ratih Wahyuni Islami', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(53, '1701092007', 'Afifah Widodo Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(54, '1711082002', 'Anjelin Andri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(55, '1711082003', 'Ramadhani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(56, '1711082005', 'Taufik Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(57, '1711082006', 'Resy Liza', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(58, '1711082008', 'Cindi Klaudia Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(59, '1711082012', 'Jihan Fadhilah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(60, '1711082021', 'M. Aidil Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(61, '1711082022', 'Aqilla Novia Sukma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(62, '1711082024', 'Vienne Anggelica Kurnia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(63, '1711082025', 'hidayatul sidiq', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(64, '1711082026', 'Sarah Latifah Ma\'rif', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(65, '1711082029', 'Muhammad Abdur Rozak', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(66, '1711082030', 'Syafila Tiara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(67, '1711082034', 'Elang Abdul Azis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(68, '1711082036', 'Andre Des Rizaldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(69, '1711082038', 'Eko Mulya Chandra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(70, '1711082047', 'irsyadi sayid', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(71, '1711082050', 'Rizkhan Hadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(72, '1711082051', 'Muhammad fahrurrozi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(73, '1711082054', 'Marisa Ayu Saphira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(74, '1711082055', 'Gabriel Halsya Surya Darma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(75, '1711082007', 'Farhan Pratama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(76, '1711082020', 'Dewi Sartika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(77, '1711082043', 'Dicky Hermiansyah Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(78, '1711082052', 'Cecilya Lailaturahmi Hamedeko', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(79, '1711082049', 'Fachrully Rahman ', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(80, '1711082016', 'Suci yolanda putri ', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(81, '1711082019', 'Boby Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(82, '1701082023', 'Naufal Ammar Miftah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(83, '1701082001', 'Khaira Aprinaldo Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(84, '1701081048', 'Muthia Afrinisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(85, '1701082034', 'Chyntia Frandini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(86, '1701081009', 'Junia Riyani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(87, '1701082022', 'Nur Afuwa Ningtyas', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(88, '1701082032', 'FAJAR SETYAWAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(89, '1701082018', 'Hidayatul Fadhilah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(90, '1701081024', 'Athirah Ayu Toisuta', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(91, '1701081002', 'Febri Zummiati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(92, '1701081040', 'CITRA SARI INDAH UTAMA PUTRI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(93, '1701081018', 'Reza Anugraha', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(94, '1701081008', 'Sean Rayhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(95, '1701091022', 'Indra Zandi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(96, '1701092006', 'Annisa Hakimi Nasry', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(97, '1701092009', 'Lokyta Indah Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(98, '1701082016', 'Yulianti', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(99, '1601082010', 'Ivander Evan Manggala', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(100, '1701082035', 'Afsri Ramayani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(101, '1701081025', 'Dandi Adila Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(102, '1701081044', 'ABIM PRADANA PUTRA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(103, '1701092028', 'Rehanul Fikri Ilmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(104, '1701092013', 'Taufik Yazidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(105, '1701081022', 'Nitra Khaira Dini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(106, '1711082028', 'Zahri Hasanati', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(107, '1701081039', 'Auliatul Wahyudi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(108, '1701082002', 'Yandri Syanurdi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(109, '1701082020', 'Maulana Hanif Alfaro', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(110, '1701092029', 'Satria Rahmat Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(111, '1701091021', 'Yolanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(112, '2211089008', 'MIFTAHURRAHMI', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(113, '1701091036', 'Sobian Chaniago', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(114, '1701091001', 'Siti Aisyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(115, '1701091027', 'Ratna Mayang Suri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(116, '1701081043', 'Petrus Kanisius Taplo kaize', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(117, '1701082030', 'HERU SAMUDERA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(118, '1701082021', 'Rahmatul Azizah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(119, '1701091046', 'Maya Lestari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(120, '1701092019', 'Muhammad Adzka Syarif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(121, '1701092014', 'Rifky Aldiansyah Pratama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(122, '1701091016', 'Nurlaily', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(123, '1701091028', 'Prima Tri Dewi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(124, '1701091024', 'Fuji Rahayu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(125, '1701081012', 'GERRI HERMAWAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(126, '1601082001', 'Resi Armelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(127, '1701091048', 'Aditya Fattah A.', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(128, '1701092004', 'Jehan Fauziah Annisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(129, '1701082005', 'Adityo Ferry', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(130, '1701081028', 'Farid Fauzan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(131, '1601081036', 'Muhammad Fajri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(132, '1701082004', 'Hayatul Azian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(133, '1601081013', 'Abd Aziz Saleh Batubara', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(134, '1701081011', 'PEGGY PRATAMA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(135, '1701081033', 'annisa mutiathul jannah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(136, '1701091053', 'Hanif Marshal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(137, '1601082025', 'Yovi Rezki Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(138, '1701092027', 'Wulan Yulia Maizoni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(139, '1701082010', 'Intan Putri Johan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(140, '1701082024', 'Novita Sari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(141, '1701091038', 'Aqbil Gilang Arsika', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(142, '1701092001', 'Indri Dwi Ryandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(143, '1701092015', 'Fitra Febrian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(144, '1701081005', 'Cilvia Chairunnisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(145, '1701081004', 'Nanda Fernando', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(146, '1501082015', 'Aldio Caesar Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(147, '1701092008', 'Rizka Adinda Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(148, '1711082044', 'Ichlashio Madheswara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(149, '1711082035', 'Razitul Ikhlas', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(150, '1711082041', 'Banny Akbar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(151, '1711082031', 'Ikhlas Zul Amal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(152, '1711082033', 'Alfiadi Adha', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(153, '1711082032', 'Wahyu Alfandry Pulungan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(154, '1711082037', 'Alkhairul Yoga', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(155, '1701091043', 'Bunga Putri Dipenti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(156, '1701091044', 'Wiwik Oktriliani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(157, '1701092023', 'Soultan Alfath Syahelsa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(158, '1701081026', 'Shavira Triamanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(159, '1701091040', 'Ifayola Desdian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(160, '1701091029', 'Lina Wahyuni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(161, '1701091026', 'Isnaini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(162, '1701092012', 'Lakdar Afrento', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(163, '1711082039', 'Filrza Artavio', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(164, '1701081046', 'Monika Listiana Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(165, '1711082014', 'Lathifah Hanum', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(166, '1701081007', 'Nurul Maulida', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(167, '1701081016', 'NAILIL FATMI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(168, '1701081047', 'Teguh Yudianto', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(169, '1701082009', 'Bima Ardiansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(170, '1701081045', 'Andro Osvaldo', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(171, '1701081026b', 'Shavira Triamanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(172, '1701081014', 'Syukria Fiki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(173, '1701082029', 'Merina Savitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(174, '1701081013', 'Sistri Indah Purnama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(175, '1601081028', 'Alfajri Maulana Ibrahim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(176, '1701092010', 'Sari Noviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(177, '1701091045', 'Putri Ramadhani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(178, '1701091014', 'Debi Regita Senja Untari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(179, '1701092024', 'Helmia Safni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(180, '1701091052', 'fellicia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(181, '1701091039', 'Sonya Halimah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(182, '1701082014', 'Mechy Adelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(183, '1701081042', 'Nur Jaini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(184, '1701081049', 'Doni Azmara', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(185, '1501081047', 'Deri Gustianto', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(186, '1701091041', 'rere salpajuta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(187, '1701082007', 'Rizky Revaldy', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(188, '1801091021 ', 'Andra Gusman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(189, '1801091005 ', 'Angga Lorenza ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(190, '1801091034', 'Aprian Adnand', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(191, '1801091006', 'Dinda Meivianti Dwi Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(192, '1801091020', 'Elfi Susanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(193, '1801092013', 'Elsa Nelzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(194, '1801092015', 'Fadhila Suci Andini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(195, '1801092018', 'Fadhilla Rahmanisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(196, '1801091007', 'Fahmi Abdul Aziz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(197, '1801092016', 'Feby Rahmasari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(198, '1801092025', 'Habib Faruqi ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(199, '1801091019', 'Johan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(200, '1801091023', 'Juni Safitri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(201, '1801091030', ' Merisa Adha Azzahra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(202, '1801092021', 'Mufi Arwa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(203, '1801091031', ' Muflihah Indra ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(204, '1801092014', ' Naufal Ihsanul Rasyid ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(205, '1801092026', ' Nur Azizah Rizkyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(206, '1801091035', ' Rades Saputri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(207, '1801091018', ' Riski Desri Hafani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(208, '1801091032', 'Tasha Tasmiati ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(209, '1801091033', ' Utari Rezky Alfany', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(210, '1801092023', ' Yenni Yunnita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(211, '1801092030', ' Yola Yohana ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(212, '1801091008', ' Zahratul Aini Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(213, '1801092001', ' Akhiratunnisa Hasanah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(214, '1801091003', ' Alissa Dori ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(215, '1801091028', ' Alvikri Mukhlis ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(216, '1801092004', ' Dinda Putri Nirmala', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(217, '1801091029', ' Dini Syukrina Sabri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(218, '1801091016', ' Elsa Annisa Sabri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(219, '1801091024', ' Fasluki Perdana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(220, '1801091015', ' Fira Faradilla', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(221, '1801092028', ' Fitri Handayani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(222, '1801092002', ' Haura Fathinah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(223, '1801091014', 'Ilfiza Mutia Rahmi ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(224, '1801092007', 'Irna Fitri Yanti ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(225, '1801092011', ' Mohammad Rafiqi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(226, '1801091004', ' Muhammad Fauzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(227, '1801092008', 'Muhammad Irfan Fadhilah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(228, '1801091027', ' Mutia Hulwah Nur Alif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(229, '1801092005', 'Nur Rahmad Ramadhan ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(230, '1801091011', ' Rika Marsoviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(231, '1801091009', ' Rizna Yusmilanda Purba', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(232, '1801092003', ' Ronaldion Aditya ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(233, '1801091026', ' Safira Putri Nabila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(234, '1801092012', ' Salsabila Defris Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(235, '1801092029', ' Sarinah Erat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(236, '1801091001', 'Suri Hanifah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(237, '1801092010', ' Teten Dwi Rahmi Kiflinda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(238, '1801091002', ' Yolla Fernanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(239, '1801092009', ' Zelli Oktariana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(240, '1701081030', 'Fachru Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(241, '1801082022', 'Ahmad Givantri Haykal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(242, '1801081007', 'Anggun Melia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(243, '1801081018', 'Annisa Septia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(244, '1801081019', 'Astina Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(245, '1801081017', 'Atika Suri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(246, '1801082020', 'Dinda Tria Febri Yansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(247, '1801082025', 'Esi Tria Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(248, '1801081021', 'Faizura Zadri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(249, '1801082024', 'Fikri Rahmadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(250, '1801082023', 'Gilang Ramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(251, '1801082009', 'Indah Anggraini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(252, '1801081005', 'M. Rayhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(253, '1801082021', 'Maitsa Nabila', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(254, '1801081027', 'Meidiana Shafira', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(255, '1801081015', 'Muhammad Fandi Riadi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(256, '1801082019', 'Muhammad Fitra Reza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(257, '1801081009', 'Nalda Ayu Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(258, '1801081016', 'Nenda Yunita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(259, '1801082028', 'Nicky Yulia Ameris', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(260, '1801082018', 'Sadik Tulastu', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(261, '1801082016', 'Suci Ramadhani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(262, '1801082014', 'Verdian Ramdhani ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(263, '1801082017', 'Yusril Mahendra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(264, '1801082013', 'Adam Firmansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(265, '1801081003', 'Ananda Kurnia Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(266, '1801082011', 'Andre Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(267, '1801081024', 'Berlina Febrianti ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(268, '1801082002 ', 'Dwi Suci Amelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(269, '1801082001', 'Fatzryah Virantika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(270, '1801081013', 'Fawziah Tul Ardia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(271, '1801082005', 'Fhadel Wedi Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(272, '1801082007', 'Indra Ramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(273, '1801081012', 'Julita Sari ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(274, '1801081004', ' Lisna Sumarni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(275, '1801081010', 'Mega Sari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(276, '1801082006', 'Muhamad Farhan Salim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(277, '1801081022', 'Muhammad Dehan Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(278, '1801081002 ', 'Muhammad Idris', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(279, '1801082008', ' Muhammad Umar Huzein', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(280, '1801082004', 'Nadila Wellyno Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(281, '1801081025', 'Nova Putri Octaviani ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(282, '1801081026', 'Rahmat Almubarak', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(283, '1801081023', 'Re Abdul Afif', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(284, '1801081006', 'Reza Putri Julita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(285, '1801082010', ' Roby Isnil Juanda ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(286, '1801082026', 'Taufik Ihsan Efendi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(287, '1801081014', 'Yarmis Yuliana ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(288, '1801081001', 'Yosi Julia Masni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(289, '1801091025 ', 'Fadhilah Febriani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(290, '1701081006', 'afrizall03chan@gmail.com', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(291, '1701091047', 'Nasri Sarif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(292, '1701091050', 'Mursyidul Haq', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(293, '1701092026', 'Risya Dwi Aulia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(294, '1701082033', '	Rafly Surya Chandra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(295, '1701081023', '	Dicky Rinaldi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(296, '1701092020', 'Qatrunnada Nurhana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(297, '1701082036', 'Adella', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(298, '1701092017', 'Lisa Oktafiyani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(299, '1701091015', 'RAHMAT JUNEDI', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(300, '2011089007', 'Putri Huriati', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(301, '1601092016', 'Putri Afriyan Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(302, '1701091049', 'Ramli Hidayat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(303, '1701081041', 'Deby Hibatul Fadillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(304, '1701082038', 'Hafriyaldo Syafril', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(305, '1711082042', 'Kurnia Fajar Viliano', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(306, '2011089011', 'Wara Ulan Saputri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(307, '2011089004', 'Frisdiandi Septiatama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(308, '1711082010', 'Reza Oksri Nengsi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(309, '2011089002', 'Afdal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(310, '1711082013', 'Fikri Maulana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(311, '1711082048', 'Elsa Oktavia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(312, '1801082015', 'Dicky Yuliardi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(313, '1901081001', 'Kournia Swastika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(314, '1901081024', 'Melia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(315, '1901082008', 'Ossy Mayra Dwitami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(316, '1901081014', 'Lusi Dwi Tri Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(317, '1901081017', 'Laras Santi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(318, '1901082014', 'M. Wahyu Agustino', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(319, '1901081009', 'Dani Ahnaf Falih', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(320, '1901081007', 'Husnul Fikri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(321, '1901081005', 'Indra Darmawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(322, '1901082022', 'Muhammad Danny Utama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(323, '1901082002', 'Khasbiy Rifqi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(324, '1901081003', 'Lia Febriyusni Audi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(325, '1901081011', 'Vini Jumatul Fitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(326, '1901081016', 'Aldi Saputra Tanjung', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(327, '1901081020', 'Dodi Saputra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(328, '1901081022', 'Annisa Dwi Febryanti', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(329, '1901081028', 'Sirajul Afkar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(330, '1901082004', 'Muhammad Afdal Indrawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(331, '1901082005', 'Esa Pramedia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(332, '1901082009', 'Afif Farhan Ichwanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(333, '19010820011', 'M. Angga Fitra Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(334, '1901082017', 'Afifah Khairun Nisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(335, '1901082021', 'Fanny Laila Safitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(336, '1901082024', 'Ahlanda Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(337, '1901082027', 'Arin Cantika Musi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(338, '1901081030', 'Spero Apda Mahesa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(339, '1801082003', 'Dwi Latiffah Hanum', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(340, '1901081004', 'Niamatut Thoharia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(341, '1901081006', 'Ahmad Nur Riyandi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(342, '1901081008', 'Rizki Anugrah Vidian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(343, '1901081010', 'Rivola Islami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(344, '1901081015', 'Wahyuna', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(345, '1901081019', 'Yandre May Iklas', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(346, '1901081021', 'Ryansyah Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(347, '1901081023', 'Cindy Irawan Pratiwi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(348, '1901081025', 'Rini Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(349, '1901081027', 'Latifah Afra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(350, '1901082001', 'Zigo Stephano', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(351, '1901082003', 'Ahmad Siddiq', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(352, '1901082006', 'Silmi Salsabilla', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(353, '1801081030', 'Spero Apda Mahesa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(354, '1801081008', 'Rizki Anugrah Vidian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(355, '1901082016', 'M. Reza Gevan Lolyvich', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(356, '1901082010', 'Ridho Farras Muthi Amta', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(357, '1901082015', 'Anselya Meilanitawati Fitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(358, '1901082018', 'Puput Pujiati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(359, '1901082020', 'Muhammad Fajri Husaini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(360, '1901082025', 'Putri Nadya', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(361, '1901082026', 'Muhamad Al Hafizh', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(362, '1901082029', 'Desi Rahmayuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(363, '1901082030', 'Daffa Julistio', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(364, '1901082007', 'Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(365, '1901093003', 'Hafis Hidayatullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(366, '1901093009', 'Rahmialis Yakub', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(367, '1901093010', 'Arrafi Herosya Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(368, '1901093011', 'Aulia Permana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(369, '1901093016', 'Hafizah Nurul Salsabila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(370, '1901093017', 'Muhammad Fikri Afansyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(371, '1901093018', 'Ayyubi Fauzihan Jefry', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(372, '1901093019', 'Nabila Ridwan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(373, '1901093021', 'Nois Arya Chaerunianisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(374, '1901093031', 'Arinanda Satrya Hakim', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(375, '1901093039', 'Noviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(376, '1901093041', 'Sarah Fitri Khairatunnisa A', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(377, '1901093042', 'Yusuf Baihaqi Amanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(378, '1801092019', 'Akbar Fadilah Rahman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(379, '1901091002', 'Iksan Nursalim', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(380, '1901091003', 'Dea Syafira', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(381, '1901091009', 'Zurriyata Thaibah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(382, '1901091011', 'Agil Kurniawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(383, '1901091012', 'Jesi Andria Joni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(384, '1901091015', 'Dian Astuti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(385, '1901091017', 'Trisa Sarifatul Anisak', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(386, '1901091018', 'Rafli Jefa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(387, '1901091020', 'Sherina Tari Yolanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(388, '1901091022', 'Adinda Putri Junaidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(389, '1901091024', 'Indah Kusuma Ningsih', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(390, '1901091026', 'Ridda Witdianti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(391, '1901092002', 'Wahyu Khairat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(392, '1901092004', 'Fahri Fadhila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(393, '1901092005', 'Dewi Purnama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(394, '1901092007', 'Citra Alfianti Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(395, '1901092009', 'Jihan Zakia Firdaus', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(396, '1901092012', 'Rifki Kurnia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(397, '1901092013', 'Mona Monika Veza', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(398, '1901092015', 'Azhim Azda Nugraha', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(399, '1901092017', 'Fadhil Defithra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(400, '1901092020', 'Yulya Marda Ningsih', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(401, '1901092022', 'Febrariola Navida', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(402, '1901092023', 'Afif Fujia Rahman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(403, '1901092025', 'Yoga Kurniawan Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(404, '1901092030', 'Rifat Alifa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(405, '1901091001', 'Rizkiah Rahmah Hatta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(406, '1901091004', 'Sandri B', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(407, '1901091006', 'Mifthah Aulianti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(408, '1901091008', 'Welsi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(409, '1901091010', 'Nurul Salsabila Yasfa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(410, '1901091013', 'Rizki Pratama Adryan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(411, '1901091014', 'Juma Helda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(412, '1901091016', 'Nur Azizah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(413, '1901091019', 'Fauza Darmansyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(414, '1901091021', 'Elvina Desmendra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(415, '1901091023', 'Helzi Rahmalya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(416, '1901091025', 'Nurul Kirana Marta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(417, '1901091027', 'Riky', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(418, '1901092001', 'Valery Raesya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(419, '1901092003', 'Muhammad Olif Rahmadia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(420, '1901092006', 'Rahmi Zazkia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(421, '1901092008', 'Fadhillah Putri Fatria', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(422, '1901092010', 'Rahayu Indah Abadi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(423, '1901092011', 'Firman Shiddiq Alamsyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(424, '1901092016', 'Eddo Yulianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(425, '1901092018', 'Fattaliya Zikra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Perempuan'),
(426, '1901092019', 'Muhammad Abdillah Dzikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(427, '1901092021', 'Shalsabilla Elga Andini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(428, '1901092024', 'Imam Muhammad Rafifi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(429, '1901092026', 'Atika Indah Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(430, '1901092028', 'Citra Ferlli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(431, '1901092029', 'Novri Hidayat Sabri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(432, '1901093005', 'Silvia Farina', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(433, '1901093006', 'Miftachul Khairiyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(434, '1901093007', 'Rita Oktaviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(435, '1901093008', 'Putri Ramadhan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(436, '1901093013', 'Sarifa Suhaila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(437, '1901093014', 'Ghina Lianti Sastri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(438, '1901093015', 'Friska Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', '');
INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `gender`) VALUES
(439, '1901093022', 'Aura Syifa Listi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(440, '1901093024', 'Muthari Al Furqani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(441, '1901093025', 'Muhammad Irsyad', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(442, '1901093026', 'Scandra Rahmadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(443, '1901093027', 'Muhamad Irvan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(444, '1901093028', 'Rahmat Tri Saputra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(445, '1901093029', 'Fachrureza Yubesta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(446, '1901093030', 'Arief Rachman Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(447, '1901093033', 'Tri Veramita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(448, '1901093034', 'Afdhaluz Zikri Syamra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(449, '1901093035', 'Muhammad Ravi Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(450, '1901093036', 'Maysitah Khairunnisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(451, '1901093037', 'M. Dean Abdillah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(452, '1901093038', 'Fakhrie Ramadhan Eka Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(453, '1901093040', 'M Al Hafiz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(454, '1901082028', 'Muhammad Hafiz', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(455, '1711082001', 'Alif Gilang Mulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(456, '1711082040', 'Judang Rizki Muhammad', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(457, '1811081002', 'Dika Andra Joni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(458, '1811081003', 'Deni Al Farizi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(459, '1811081005', 'Dewi Sartika Mulyadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(460, '1811081006', 'Novita Aulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(461, '1811081007', 'M. Ikhsan Gumanof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(462, '1811081008', 'Meilinda Safitri Effendi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(463, '1811081009', 'I.s. Mutia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(464, '1811081010', 'Devara Yudia Alindi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(465, '1811081012', 'Lannia Prissila Ayu', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(466, '1811081014', 'Tulsi Yasmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(467, '1811081026', 'Muhammad Zukra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(468, '1811081030', 'Zukron Alviandy Rahmadhan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(469, '1811081031', 'Ulul Azmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(470, '1811081032', 'Farihah Salsabila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(471, '1811081033', 'Robby Aprilian', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(472, '1811081035', 'Rozliyana Binti Latola', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(473, '1811082001', 'Faza Qonita Auliya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(474, '1811082004', 'M Irsad Alfajri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(475, '1811082010', 'Rahmat Berlianda Avandi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(476, '1811082012', 'Muhammad Ariq Hendry', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(477, '1811082015', 'Nola Nur Azizah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(478, '1811082021', 'Yasri Aldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(479, '1811082022', 'Farros Hazim', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(480, '1811082024', 'Afrizal Fauzi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(481, '1711082015', 'Maulana Mahardika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(482, '1711082056', 'Farhan Yofanka', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(483, '1811081001', 'Nuria Sisma Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(484, '1811081004', 'Randi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(485, '1811081013', 'Vira Mistika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(486, '1811081016', 'Walid Algazali Dampuri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(487, '1811081018', 'Muhammad Beni Fajri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(488, '1811081021', 'Larra Dhuta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(489, '1811081022', 'Richy Azura', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(490, '1811081023', 'Jundullah Ilhaq Aulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(491, '1811081024', 'Dicky Syahfitra Lubis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(492, '1811081029', 'Harfa Thandila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(493, '1811081034', 'Farhan Rinsky Mulya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(494, '1811081036', 'Ramli', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(495, '1811082002', 'Afza Sorfina', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(496, '1811082003', 'Rayhan Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(497, '1811082005', 'Ahmad Arif', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(498, '1811082007', 'Hanif Aulia Sabri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(499, '1811082008', 'Salsabila Delaisya Permana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(500, '1811082009', 'Ramanda Syahputra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(501, '1811082013', 'Nadilla C. Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(502, '1811082017', 'Rafiq Mulia Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(503, '1811082018', 'Bayu Gusti Paraya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(504, '1811082019', 'Indah Wahyuandillah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(505, '1811082020', 'Ifdal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(506, '1811082026', 'Indah Putri Yeni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(507, '1811082027', 'Salman Alfarissy', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(508, '1901082011', 'Muhammad Angga Fitra Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(509, '1711082009', 'Teuku Excel Zasa Desriandi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(510, '2001081009', 'Zeni Tasri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(511, '2001081010', 'Windi Monika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(512, '2001081011', 'Sisi Priscilla', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(513, '2001081012', 'Fadhillah Herpani Siregar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(514, '2001081014', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(515, '2001081015', 'Annisa Nabila Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(516, '2001081016', 'Fadila Rahmi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(517, '2001082014', 'Nurul Vania', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(518, '2001082015', 'Putri Ayu', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(519, '2001082016', 'Raihan Muthiaz', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(520, '2001082017', 'Rangga Wahyu Prima', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(521, '2001082019', 'Silvi Julika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(522, '2001082020', 'Silvia Nurmawati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(523, '2001082022', 'Vanny Widyawillis', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(524, '2001082023', 'Muhammad Hafiz Alkautsar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(525, '2001082024', 'Cantika Melati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(526, '2001082037', 'Faiz Abrar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(527, '2001082038', 'Faruq Alif', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(528, '2001082039', 'Hapis Ependi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(529, '2001082040', 'Kagum Ary Setiawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(530, '2001082041', 'Luqmanul Hakim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(531, '2001082042', 'M Aryo De Fajri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(532, '2001082043', 'Muhammad Abdurrahman Al Aqil', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(533, '2001082044', 'Nanda Vikran Yulzamdi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(534, '2001082045', 'Torry Yosci P Nainggolan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(535, '2001082046', 'Ulfa Izmilia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(536, '2001082047', 'Albert Edya Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(537, '1901082012', 'Fachrurrozi Anwar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(538, '1901082023', 'Shodiq Al Hakim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(539, '2001081001', 'Bintang Ramadhana Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(540, '2001081002', 'Sulis Tiyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(541, '2001081003', 'Ali Zikri Fadli', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(542, '2001081004', 'Amelia Yuliza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(543, '2001081005', 'Aulia Permatasari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(544, '2001081006', 'Dira Agustina', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(545, '2001081007', 'Martua Raja', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(546, '2001081008', 'Wezi Adri Wilmi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(547, '2001082001', 'Agung Diharsemar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(548, '2001082002', 'Bagas Prasetyo', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(549, '2001082003', 'Bunga Hendriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(550, '2001082004', 'Dhea Nur Izzaty Amanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(551, '2001082005', 'Elsi Febriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(552, '2001082006', 'Fachrizal Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(553, '2001082009', 'Ilham Anugrah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(554, '2001082010', 'Ilma Yusnita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(555, '2001082011', 'Jawahiir Abdillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(556, '2001082025', 'Rahmatul Hayani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(557, '2001082026', 'Muhammad Fadhel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(558, '2001082027', 'Rahmad Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(559, '2001082028', 'Wan Bunga', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(560, '2001082029', 'Ridho Abdillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(561, '2001082031', 'Nataysa Afrilia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(562, '2001082032', 'Rayhan Aditya Maulana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(563, '2001082033', 'Aldo Spama Putra Suir', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(564, '2001082034', 'Ananda Rizki Wulanuri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(565, '2001082035', 'Erlangga Difa Yanzi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(566, '1911081001', 'Virdapiliacani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(567, '1911081005', 'M. Rafhi Akbar Yasya. U', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(568, '1911081007', 'Rizky Anugrah Hasibuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(569, '1911081008', 'Arung Ramadhan Safii', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(570, '1911081011', 'Shatfi Husna', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(571, '1911081012', 'Widia Lestari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(572, '1911081014', 'Mesi Puspita Sari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(573, '1911081016', 'Raven Rivaldo', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(574, '1911081017', 'Azim Ilhamdi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(575, '1911081018', 'Anisa Fadilah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(576, '1911081023', 'Adio Ihsan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(577, '1911081024', 'Siska Nofri Dania', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(578, '1911081025', 'Suci Khairatuz Zahra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(579, '1911082001', 'Windi Desti Wahyuni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(580, '1911082002', 'Puji Dhiya Nabila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(581, '1911082005', 'Muhammad Fadil', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(582, '1911082006', 'Andi Irham Marhamuddin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(583, '1911082010', 'Luthfiyyah Riznisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(584, '1911082014', 'Abid Asshidiqie Nugraha', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(585, '1911082017', 'Hakkan Syukri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(586, '1911082020', 'Aster Happy Lestari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(587, '1911082025', 'Haviz Alhadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(588, '1911082026', 'Visra Handriani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(589, '1911082027', 'Muhammad Dzikrul Haq', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(590, '1911082030', 'Farid Alfajr Muhlis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(591, '1911082031', 'Fitri Chairani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(592, '1911082032', 'Dinda Tryandhary', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(593, '1811081025', 'Alvin Faiz Zulfitri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(594, '1911081002', 'Muhammad Aulia Rahman', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(595, '1911081004', 'Tiara Harmila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(596, '1911081006', 'Jimmy Efendi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(597, '1911081009', 'Ulil Ambri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(598, '1911081013', 'Nikita Chairunnisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(599, '1911081015', 'Nola Reziyana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(600, '1911081019', 'Muhammad Ilham', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(601, '1911081020', 'Muhammad Ichmal Gumanof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(602, '1911081021', 'Afifahtul Hidayati Z', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(603, '1911081022', 'Debi Indah Syafira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(604, '1911082003', 'Pratama Aditya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(605, '1911082004', 'Restu Averian Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(606, '1911082007', 'Andi Fathul Mukminin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(607, '1911082011', 'Rizqul Fauzy', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(608, '1911082012', 'Redhatul Fitri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(609, '1911082013', 'Zelfriadi Abrar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(610, '1911082015', 'Audra Najmi Maghfira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(611, '1911082021', 'Srintika Yuni Kharisma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(612, '1911082022', 'Rizki Ramadanil', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(613, '1911082023', 'Satrialdi Fernanda Zami', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(614, '1911082024', 'Muhammad Irfan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(615, '1911082028', 'Alfath Aldenof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(616, '1911082029', 'Ihsanul Ikhwan Sawir', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(617, '1911082033', 'Farhan Maulidani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(618, '2111089007', 'Hebby Zakkiya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(619, '2111089008', 'Ikhwan Pardamean Siregar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(620, '2111089011', 'Teten Dwi Rahmi Kiflinda', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(621, '2111089015', 'Zol Vilko', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(622, '2111089004', 'Faizura Zadri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(623, '2111089014', 'Yolanda', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(624, '1801092027', 'Muhammad Panji', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'Laki-laki'),
(625, '2001091002', 'Trio Naldo', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(626, '2001091003', 'Eno Fitriyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(627, '2001091004', 'Nawaytu Alrivani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(628, '2001091005', 'Anisa Rahmadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(629, '2001091013', 'Gema Hamdi Hizbullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(630, '2001092001', 'Alim Rahmat Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(631, '2001092002', 'Fejratul Utami', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(632, '2001092003', 'Andari Yudani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(633, '2001092004', 'Annisa Firstiyohana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(634, '2001092006', 'Azzah Ratul Fadhilah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(635, '2001092009', 'Febrila Sucia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(636, '2001092021', 'Iqbal Dirmasyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(637, '2001092022', 'Nadanty Oktalia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(638, '2001092023', 'Olivia Tri Suci Salsabilla', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(639, '2001092024', 'Asraf', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(640, '2001092025', 'Trynoli Azhari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(641, '2001092026', 'Fantony Rafly', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(642, '2001092027', 'Ruzy Iqbal Angdani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(643, '2001092028', 'Fajar Putra Pratama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(644, '2001092029', 'Dinda Rahmadani Rahayu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(645, '2001092030', 'Faradilla Azhary', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(646, '2001092031', 'Zikri Wahyu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(647, '2001092032', 'Mutiara Cornelia Damayanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(648, '2001092034', 'Rocky Hendri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(649, '2001092035', 'Abdul Fikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(650, '2001092036', 'Fachrur Rozi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(651, '2001092038', 'Adithya Rachmat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(652, '2001092039', 'Aditya Perdana Rizal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(653, '2001091011', 'Zenita Ulfatihasanah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(654, '2001091012', 'Vivin Erialis Puteri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(655, '2001091017', 'Ridho Rinaldi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(656, '2001091020', 'Jacky Andrazat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(657, '2001092010', 'Ica Nur Pramanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(658, '2001092011', 'Muhammad Byon', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(659, '2001092013', 'Neni Harisah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(660, '2001092014', 'Sintari Aulia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(661, '2001092015', 'Viola Yosevi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(662, '2001092033', 'Rahmi Rainnasya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(663, '2001092037', 'Grahilda Calista', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(664, '2001092040', 'Afifah Maharani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(665, '2001092041', 'Amanda Septiani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(666, '2001092042', 'Aqilla Zahra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(667, '2001092043', 'Afrike Yusela', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(668, '2001092044', 'Arsyad Hamidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(669, '2001092045', 'Bakti Aulia Zikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(670, '2001092046', 'Benny Kurniawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(671, '2001092050', 'Fanda Alfaridzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(672, '2001092051', 'Hagi Matahari Julio', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(673, '2001092053', 'M.ihsan Edisa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(674, '2001092054', 'Muhammad Alfi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(675, '2001092057', 'Muhammad Raihan Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(676, '2001091006', 'Elvirina Joice Monica', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(677, '2001091009', 'Reza Aulia Rahmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(678, '2001091016', 'Seuhendra Setiawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(679, '2001091018', 'Rita Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(680, '2001092012', 'Nanda Julian Lubis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(681, '2001092016', 'Winda Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(682, '2001092017', 'Zirva Zaitul Qolbi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(683, '2001092018', 'Feby Desna Yunita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(684, '2001092019', 'Azlan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(685, '2001092020', 'Windy Elsy Dinata', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(686, '2001092047', 'Dian Rahmi Oktaviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(687, '2001092048', 'Dina Nurulhuda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(688, '2001092049', 'Dinniatul Aqidah Azmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(689, '2001092058', 'Muhammad Siddiq', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(690, '2001092059', 'Naufal Asyraf Idrisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(691, '2001092061', 'Rivo Yulio', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(692, '2001092062', 'Ronny Febrian Saputra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(693, '2001092063', 'Ryan Febrialdo', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(694, '2001092065', 'Sulthanah Adibah Syifa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(695, '2001092066', 'Syafik Maula Faiz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(696, '2001092067', 'Syahbandar Pujangga', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(697, '2001092068', 'Vicky Adzandra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(698, '2001092069', 'Witri Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(699, '2001092070', 'Wuri Fatiha Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(700, '2001093001', 'Farah Hisanah Adwina', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(701, '2001093002', 'Nazlah Atthahirah Dwi Melki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(702, '2111089010', 'Merisa Adha Azzahra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(703, '2111089001', 'Arga Zulsilva', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(704, '1911082009', 'Muhammad Fikrullah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(705, '2011081001', 'Enzi Marni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(706, '2011081006', 'Ahmad Rizki Akbar Ganiyu', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(707, '2011081007', 'Arie Kurniawan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(708, '2011081008', 'M. Rizki Hidayah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(709, '2011081009', 'M. Ridwan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(710, '2011081010', 'Maretha Velamorin Vizhinsco', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(711, '2011081011', 'Marliana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(712, '2011081015', 'Zakia Tulrahma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(713, '2011081019', 'Aulia Rahma Dani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(714, '2011081020', 'Ahmat Anggiat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(715, '2011082002', 'Salsabilla Pramudita', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(716, '2011082005', 'Abdurrahman Razin Ar Ridho', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(717, '2011082006', 'Filbert Tri Athaillah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(718, '2011082008', 'Kevin Adika Haskim', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(719, '2011082010', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(720, '2011082015', 'Rendy Zamora', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(721, '2011083001', 'Alvin Fadli Dwi Mulya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(722, '2011083002', 'Angges Saringga', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(723, '2011083004', 'Budi Perdana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(724, '2011083006', 'Fadil Sa\'adillah Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(725, '2011083009', 'Ila Rahma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(726, '2011083011', 'Izzatul Yazidah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(727, '2011083012', 'Jeprizal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(728, '2011083013', 'Muhamad Syahlan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(729, '2011083020', 'Zaqy.  A. Rivai', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(730, '1911081003', 'Syarif Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(731, '2011081002', 'Hikmah Maulidya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(732, '2011081005', 'Rezki Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(733, '2011081012', 'Nurjamilah Zardi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(734, '2011081014', 'Ahmad Royyan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(735, '2011081022', 'Rafli Haikal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(736, '2011081023', 'Viona Denopta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(737, '2011082004', 'Nurul Prima Annisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(738, '2011082007', 'Hamzah Nurhadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(739, '2011082009', 'Jeremia Toga Barita Tua Silaba', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(740, '2011082011', 'Muhammad Raihan Surya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(741, '2011082012', 'Naufal Hady', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(742, '2011082013', 'Qusyairy Baginda Maulana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(743, '2011082014', 'Rana Luthfiya Meza', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(744, '2011082016', 'Rhadi Akhila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(745, '2011082017', 'Satria Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(746, '2011082018', 'Tsalsabila Jilhan Haura', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(747, '2011082019', 'Zul Asfi Rayhan Arevi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(748, '2011083003', 'Bajrul Hakimi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(749, '2011083005', 'Erizal May Hendra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(750, '2011083007', 'Fatur Rahman Al Farizi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(751, '2011083010', 'Ilham Agus Pratama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(752, '2011083015', 'Nelly Sintia Yanti', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(753, '2011083017', 'Reza Akbar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(754, '2011083018', 'Robby Karya Aldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', ''),
(755, '2101082021', '   Vania Vikri Ramadhani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(756, '2101082023', 'Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(757, '2101082013', 'Muhammad Zaidan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(758, '2101082008', 'Izzatul Sabrina', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(759, '2101082016', 'Puja Patrioza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(760, '2001082036', 'FADHIL GIFARI SYAHPUTRA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(761, '2101081001', 'AFIFUR RAIHAN RANGKUTI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(762, '2101081002', 'Alfath Dafana Agly', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(763, '2101081009', 'Idlal Syuja Nizhamul', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(764, '2101082001', 'Abdul Raffi Naufal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(765, '2101082006', 'Ibra Prakasa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(766, '2101082012', 'Muhammad Farid', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(767, '2101082014', 'Nadya Pebriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(768, '2101082017', 'Putri Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(769, '2101082019', 'Raihan Efel Maulana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(770, '2101082024', 'Izzuddin Azzaky', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(771, '2101082025', 'Oktaviani Pratiwi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(772, '2101082026', 'Afif Permana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(773, '2101082027', 'Alex Hermansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(774, '2101082030', 'Tasya Sepla Putri Utami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(775, '2101082035', 'Fauzan Rahmat Tubagus', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(776, '2101082036', 'Fikri Wahyu Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(777, '2101082037', 'Irvan Yuatama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(778, '2101082038', 'Isramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(779, '2101082041', 'Meza Meidia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(780, '2101082042', 'Muhammad Ilham', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(781, '2101082045', 'Rahmatul Qadri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(782, '2101082046', 'Widya Amda Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(783, '2101082049', 'Muhammad Taufiqurrahman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(784, '2101082050', 'Muhammad Fadhel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(785, '2101081004', 'Muhammad Irvandi Lubis', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(786, '2101081006', 'Putri Nabila', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(787, '2101081007', 'Rizka Annisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(788, '2101081008', 'Windo Tri Ananda Syaputra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(789, '2101082004', 'Bintang Aulizul', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(790, '2101082005', 'Hasril Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(791, '2101082009', 'Metri Andhika Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(792, '2101082010', 'Muhadzdzib Al Khairy', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(793, '2101082018', 'Rahmida putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(794, '2101082022', 'Yunita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(795, '2101082031', 'Andi Muhammad Riffal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(796, '2101082032', 'Elida Septriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(797, '2101082033', 'Famela Dewi Agustin', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(798, '2101082034', 'Fariz Satria Refandino', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(799, '2101082039', 'Kevin Oktajuanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(800, '2101082040', 'Marisa Enjel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(801, '2101082043', 'Nada Letika Rida Izzati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Perempuan'),
(802, '2101082044', 'Gofinda  Rahmat Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(803, '2101082047', 'Yassar Azzudha Kanur', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(804, '2101082048', 'Yudi Fitriadi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(805, '2101082028', 'Nando Faklin', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(806, '2111089006', 'Haura Fathinah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(807, '2211089001', 'Arin Cantika Musi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(808, '2111089005', 'Fuaddi Syah Rahman Amin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(809, '1101082031', 'ilham agusman tanjung', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'Laki-laki'),
(810, '2101092024', 'Aatrisa Mulyati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(811, '2101092033', 'Abdul Hanif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(812, '2101092034', 'Abi Lutfiandy Hendri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(813, '2101092035', 'Adhitya Kurniawan Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(814, '2101092001', 'Adi Muhamad Fajar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(815, '2101092028', 'Ahmad Faris Almuzakki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(816, '2101092036', 'Al Fajri Huda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(817, '2101092029', 'Andre Mahesa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(818, '2101092037', 'Anggi Rizki Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(819, '2101092038', 'Arif Hidayatullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(820, '2101093002', 'Arina Tasya Kamila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(821, '2101091001', 'Arisya Riani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(822, '2101092039', 'Arrasy Rizqi Taher', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(823, '2101092003', 'Berliana Dewinta Martin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(824, '2101092040', 'Bintang Rahmad Handevis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(825, '2101091002', 'Chantika Tri Amanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(826, '2101092041', 'Cindy Nabila Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(827, '2101092004', 'Cindy Vallensia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(828, '2101092042', 'Dea Insani Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(829, '2101092013', 'Denis Yusri Hyuanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(830, '2101092043', 'Dhaniel Putra Al\'qadri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(831, '2101092044', 'Dizqy Hidayat Dm', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(832, '2101092045', 'Ega Aulia Fitri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(833, '2101092046', 'Elvi Susanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(834, '2101092006', 'Fadilla Anggraini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(835, '2101092075', 'Farhan Hafidz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(836, '2101092047', 'Farrel Abennaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(837, '2101092007', 'Finda Oktariza', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(838, '2101091005', 'Frentyusmelia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(839, '2101092048', 'Gita Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(840, '2101092049', 'Hadifta Attallah Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(841, '2101092050', 'Hariansyah Fajrin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(842, '2101092008', 'Hillary Isfalana June', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(843, '2101092051', 'Ishabell Elmisa Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(844, '2101092009', 'Kasih Putri Suarli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(845, '2101092010', 'Khazanatul Iqbal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(846, '2101091006', 'Khozi Natul Amroor', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(847, '2101092020', 'Kintan Sepril Syayuni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(848, '2101092052', 'Maharani Diradinova', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(849, '2101092053', 'Maretha Anggreani Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(850, '2101093003', 'Marlisa Gunawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(851, '2101092031', 'Maysha Bunga Ananta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(852, '2101091007', 'Mia Aprilia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(853, '2101092054', 'Muhamad Faisal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(854, '2101092055', 'Muhammad Abbel Prasetya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(855, '2101092056', 'Muhammad Dafa Al-isra\'', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(856, '2101092057', 'Muhammad Fadel Riyaldi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(857, '2101092030', 'Muhammad Rifki Ferdian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(858, '2101092058', 'Muhammad Zaki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(859, '2101092059', 'Mustika Chairani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(860, '2101091008', 'Mutiara Maharani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(861, '2101092011', 'Nabila Gafernanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(862, '2101092060', 'Nauval Maulana Al Amin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(863, '2101092061', 'Nella Fitriani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(864, '2101092012', 'Nila Enjeli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(865, '2101092076', 'Nindya Armon', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(866, '2101091009', 'Nurul Safitri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(867, '2101092014', 'Putri Anggraeni Yane', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(868, '2101092015', 'Putri Dini Prameswari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(869, '2101092062', 'Qurratu Aini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(870, '2101092063', 'Rafi Citra Al Azis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', '');
INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `gender`) VALUES
(871, '2101092078', 'Rafiansyah Darman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(872, '2101092016', 'Rahmitul Hasanah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(873, '2101092064', 'Raihan Adinata', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(874, '2101092032', 'Rani Latifah Cahyani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(875, '2101092017', 'Rara Bisri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(876, '2101092065', 'Ratih Yudistiviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(877, '2101092018', 'Resti Aulia Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(878, '2101092066', 'Ridha Tul Nafsi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(879, '2101092067', 'Rifki Mulfianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(880, '2101092068', 'Salsabila okta kirana ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(881, '2101092069', 'Satria Rhama Dwi Jaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(882, '2101091013', 'Siti Nurhaliza Yus', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(883, '2101092021', 'Sonya Hasna Hafizah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(884, '2101092070', 'Thoriq Sulthan Nugraha', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(885, '2101092022', 'Ulfah Pratiwi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(886, '2101092071', 'Wiwin Apriyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(887, '2101092025', 'Yunika Butsainah Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(888, '2101092026', 'Zahra Meidira', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(889, '2101092027', 'Zalna Mustika', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(890, '2101092074', 'Zikra Jordi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(891, '2001092056', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(892, '2211089006', 'Rizkiah Rahmah Hatta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(893, '2001092055', 'Muhammad Alif Putra Ananda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(894, '2211089007', 'Firman Shiddiq Alamsyah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(895, '2211089011', 'Yenni Yunnita', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(896, '2211089003', 'Dani Ahnaf Falih', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(897, '2211089002', 'Chairul Rahman Taufik', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Laki-laki'),
(898, '2211089010', 'Miftahurrahmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(899, '2211089009', 'Irna fitri yanti', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(900, '2211089012', 'Utari Rezky Alfany', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(901, '2211089004', 'M. Fadli Zein', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(902, '2101162001', 'Aldi Irfandy Hidayat', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(903, '2101162002', 'Alvin Saputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(904, '2101162004', 'Beni Irawan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(905, '2101162003', 'Bobi Yanputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(906, '2101163010', 'Defita', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(907, '2101162005', 'Diana Rahayu', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(908, '2101162006', 'Fiqri Sayidina Adianza', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(909, '2101161001', 'Fitrah Jerry Yandi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(910, '2101163003', 'Gustia Dwi Wulandari', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(911, '2101162008', 'Habib Alfarizzi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(912, '2101162009', 'Iqra Aulia Syafputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(913, '2101163004', 'M. Iqbal', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(914, '2101162011', 'Marsenda Ovilia', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(915, '2101163005', 'Matori Rona Putrawan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(916, '2101162013', 'Muhammad Alvin Meijikita', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(917, '2101162015', 'Noufal Priatna', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(918, '2101163002', 'Rahmad Ramadhan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(919, '2101162016', 'Rahmat Datul Fahri', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(920, '2101163006', 'Ridwan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(921, '2101162022', 'Riko Saputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(922, '2101163007', 'Rudi Oktaviansya', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(923, '2101163009', 'Silvia', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(924, '2101162018', 'Syahrul', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(925, '2101163008', 'Windi Novemi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(926, '2101163001', 'Wini Syafitri', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(927, '2101162019', 'Wiria Ashen', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(928, '2101162020', 'Yuliani', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', ''),
(929, '2101183014', 'Andika Fernando', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(930, '2101183009', 'Annisa Fitri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(931, '2101182002', 'Elto Trio Saputra', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(932, '2101183007', 'Haudio Arsyah Pisesra', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(933, '2101183001', 'Indri Alfianti Safitri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(934, '2101182003', 'Kemal Mikeda Dikoto', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(935, '2101183011', 'Muhammad Dziqri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(936, '2101183006', 'Naufal Dzaki', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(937, '2101183008', 'Nur Arikah', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(938, '2101182005', 'Putri Rahmawati', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(939, '2101183004', 'Sinta Alifia Mayasieva', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(940, '2101183005', 'Suci Ramadhani', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(941, '2101183010', 'Yulia Sosmita', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', ''),
(942, '2001092052', 'Luthfi Firstian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', ''),
(943, '2101094009', 'Aditiya Permana Putra', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(944, '2101094019', 'Ahmad Fadli', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(945, '2101094011', 'Dwi Nur Fitriani', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(946, '2101094020', 'Fatma Wati', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(947, '2101094018', 'Feby Dwiyanti Tampubolon', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(948, '2101094006', 'Hafif Saputra', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(949, '2101094016', 'Julia Trysatya Nisari', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(950, '2101094004', 'Nendi Wiziadma', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(951, '2101094002', 'Novia Putri', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(952, '2101094007', 'Nurul Azizah', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(953, '2101094005', 'Surya Sudewo', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(954, '2101094003', 'Syalwa Cendana Ruslan', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(955, '2101094017', 'Yan Arshal Naibaho', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(956, '2101094001', 'Zulfikar', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', ''),
(957, '2011089005', 'Haryuni Azmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan'),
(958, '2011089006', 'Ningsih Ayzara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
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
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `kode_matakuliah`, `nama_matakuliah`, `TP`, `sks`, `jam`, `sks_teori`, `sks_praktek`, `jam_teori`, `jam_praktek`, `semester`, `id_kurikulum`) VALUES
(1, 'RPL3401', 'Pemrograman Web Framework', 'T', 2, 2, 2, 0, 2, 0, 2, 5),
(13, 'RPL3402', 'Analisis dan perancangan Perangkat Lunak', 'T', 2, 2, 2, 0, 2, 0, 2, 5),
(14, 'RPL3403', 'Kecerdasan Buatan', 'P', 2, 2, 3, 2, 2, 2, 3, 5),
(15, 'RPL3404', 'Kesehatan dan keselamatan kerja', 'P', 2, 2, 3, 2, 2, 2, 3, 5),
(16, 'RPL2402', 'Statistik dan Probabilitas', 'T/P', 3, 6, 1, 2, 2, 4, 4, 5),
(17, 'RPL3210', 'Manajemen Proyek', 'T', 2, 4, 2, 0, 4, 0, 2, 5),
(18, 'ISY3208', 'Manajemen Proyek SI', 'T', 2, 2, 2, 0, 2, 0, 2, 6),
(19, 'ISY3210', 'Keamanan Sistem Informasi', 'T', 2, 2, 2, 0, 2, 0, 2, 6),
(20, 'ISY3211', 'Probabilitas dan Statistika', 'P', 2, 2, 3, 2, 2, 2, 3, 6),
(21, 'ISY3310', 'Pemograman Mobile Lanjut', 'P', 2, 2, 3, 2, 2, 2, 3, 6),
(22, 'ISY3306', 'Pemrograman Desktop', 'T/P', 3, 6, 1, 2, 2, 4, 4, 6),
(23, 'ISY3204', 'Interaksi Manusia dan Komputer', 'T', 2, 4, 2, 0, 4, 0, 2, 6),
(24, 'CEN3101', 'Jaringan Komputer Dasar', 'T', 2, 2, 2, 0, 2, 0, 1, 7),
(25, 'CEN3103', 'Algoritma Pemrograman', 'T', 2, 2, 2, 0, 2, 0, 1, 7),
(26, 'CEN3201', 'Switching, Routing dan Wireless', 'P', 2, 2, 3, 2, 2, 2, 2, 7),
(27, 'CEN3205', 'Pemrograman Berbasis Objek (PBO)', 'P', 2, 2, 3, 2, 2, 2, 2, 7),
(28, 'CEN3301', 'Cloud Computing', 'T/P', 3, 6, 1, 2, 2, 4, 3, 7),
(29, 'CEN3401', 'Keamanan Komputer dan Jaringan', 'T', 2, 4, 2, 0, 4, 0, 4, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah_kbk`
--

CREATE TABLE `matakuliah_kbk` (
  `id_matakuliahkbk` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah_kbk`
--

INSERT INTO `matakuliah_kbk` (`id_matakuliahkbk`, `id_matakuliah`, `id_kbk`) VALUES
(15, 1, 1),
(16, 13, 2),
(17, 14, 3),
(25, 15, 4),
(27, 16, 5),
(29, 17, 3),
(30, 18, 1),
(31, 19, 2),
(32, 20, 3),
(33, 21, 4),
(34, 22, 5),
(35, 23, 3),
(36, 24, 1),
(37, 25, 2),
(38, 26, 3),
(39, 27, 4),
(40, 28, 5),
(41, 29, 3);

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
(99, '2024_06_08_161301_create_permission_tables', 1),
(100, '2024_07_08_123552_create_notifications_table', 2),
(101, '2024_07_08_125534_create_notifications_table', 3),
(102, '2024_07_08_133408_create_notifications_table', 4),
(103, '2024_07_08_134607_modify_notifications_table', 5);

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
(1, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 166),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 155),
(5, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 156),
(8, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('031b5f4a-cc2c-49c2-8915-b29b36f30a59', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi oleh ALDE ALANDA\"}', '2024-07-08 07:55:16', '2024-07-08 07:55:09', '2024-07-08 07:55:16'),
('08cb1707-6b87-4665-ac53-44d52a3bff9a', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:23:32', '2024-07-08 09:23:29', '2024-07-08 09:23:32'),
('09ed0286-0386-40d1-a51b-57036b995d56', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:07:52', '2024-07-08 09:07:49', '2024-07-08 09:07:52'),
('0d84cd3e-276e-4114-b48f-ffeeff35f612', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:15:41', '2024-07-08 09:15:38', '2024-07-08 09:15:41'),
('10b8ea04-662e-459d-8f61-3867cdd554ad', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:15:41', '2024-07-08 09:15:06', '2024-07-08 09:15:41'),
('11ed7fe9-d598-4b5f-8242-0488aca12312', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-09 04:03:42', '2024-07-08 09:15:20', '2024-07-09 04:03:42'),
('20b3d9f4-b856-49a6-8cb1-c8733c82844a', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 08:03:43', '2024-07-08 08:03:39', '2024-07-08 08:03:43'),
('37249c42-518d-4d4d-b660-77d01c5e13ed', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:07:26', '2024-07-08 09:07:03', '2024-07-08 09:07:26'),
('3cf72324-6061-4816-b63b-3f95d61d2ed4', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:08:50', '2024-07-08 09:08:41', '2024-07-08 09:08:50'),
('44fd602c-2844-4297-8919-d81fe3f10ffa', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi oleh ALDE ALANDA\"}', '2024-07-08 07:06:01', '2024-07-08 07:05:45', '2024-07-08 07:06:01'),
('48c44285-668a-47ac-bbaf-4a0d0b6331cd', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:24:05', '2024-07-08 09:24:02', '2024-07-08 09:24:05'),
('5d7b9975-47c0-487e-9400-049a2284d32f', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:07:26', '2024-07-08 08:26:38', '2024-07-08 09:07:26'),
('6616ccfc-ca5a-421e-be6a-1dea565ac5a0', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 7, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', NULL, '2024-07-09 19:04:03', '2024-07-09 19:04:03'),
('68938b21-e837-4bc5-ac19-a578b60c4c5b', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:24:05', '2024-07-08 09:23:47', '2024-07-08 09:24:05'),
('730fbba5-b482-4fad-a173-1d9d668a52b9', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 07:57:51', '2024-07-08 07:57:46', '2024-07-08 07:57:51'),
('8f4e9e86-65cd-4fb8-8b2a-5d0073596c94', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:08:50', '2024-07-08 09:08:23', '2024-07-08 09:08:50'),
('a3e12b75-5fc8-4109-b295-656ab01eaeef', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 4, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 08:27:32', '2024-07-08 08:27:27', '2024-07-08 08:27:32'),
('b1b34365-fc87-49a6-ad42-3522c262d720', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:17:46', '2024-07-08 09:17:27', '2024-07-08 09:17:46'),
('c21814a6-31ea-42d6-a3f7-8a47d9ec480f', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:11:42', '2024-07-08 09:11:38', '2024-07-08 09:11:42'),
('c23cba3a-0dcd-441a-bd4d-33ca7e119740', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:17:09', '2024-07-08 09:17:07', '2024-07-08 09:17:09'),
('caf5d9e1-8001-43bc-810f-48d42e3ecb4c', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:17:46', '2024-07-08 09:17:40', '2024-07-08 09:17:46'),
('ce5bd293-b9f1-4cc4-a3aa-7148b1a7f9fc', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:15:41', '2024-07-08 09:15:27', '2024-07-08 09:15:41'),
('d5d2863e-8ce4-4458-b5a3-aec798c33308', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:08:50', '2024-07-08 09:08:17', '2024-07-08 09:08:50'),
('dc497d17-bc4b-41db-ac16-99233932a75f', 'App\\Notifications\\SoalVerifiedNotification', 'App\\Models\\User', 155, '{\"soal_id\":null,\"message\":\"Soal Anda telah diverifikasi\"}', '2024-07-08 09:08:09', '2024-07-08 09:08:07', '2024-07-08 09:08:09'),
('e2b11a5e-1546-4640-9071-054c722bebd8', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:08:50', '2024-07-08 09:08:48', '2024-07-08 09:08:50'),
('e5c79ca5-5039-4e13-bb04-eb4ab99b4879', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-09 04:03:42', '2024-07-08 09:15:13', '2024-07-09 04:03:42'),
('eaefc50b-ef39-490d-9eb5-7e7c9d254de6', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 08:01:34', '2024-07-08 08:01:30', '2024-07-08 08:01:34'),
('eff881cc-68a9-4e75-88ec-f49297f39dfe', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 4, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi oleh ALDE ALANDA\"}', '2024-07-08 07:18:33', '2024-07-08 07:18:28', '2024-07-08 07:18:33'),
('f51b2436-ad78-4c46-8a96-b676d64909bb', 'App\\Notifications\\RPSVerifiedNotification', 'App\\Models\\User', 155, '{\"rps_id\":null,\"message\":\"RPS Anda telah diverifikasi\"}', '2024-07-08 09:11:42', '2024-07-08 09:11:31', '2024-07-08 09:11:42');

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
('dosen@gmail.com', 'gcp1NDuWylqZyBqDDNs51I5fFfpqS9WpVD1bdzwEdfNq6fVTJR9CXlCGndZr', '2024-06-25 20:19:25'),
('kbk@gmail.com', 'pm4FDJK4GLAoITcAqN5BJBDzL21jsN70xM1v2qBcNj2MGCUAqT4Bq5S7A0PA', '2024-06-25 20:19:40'),
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

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(24, 'view dashboard admin', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(25, 'view data user', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(26, 'view data change log', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(27, 'view data master', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(28, 'view data tahun akademik', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(29, 'view data kurikulum', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(30, 'view data matakuliah', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(31, 'view data dosen pengampu', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(32, 'view data manajemen kbk', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(33, 'view data mahasiswa', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(34, 'view data proposal ta', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(35, 'view data rps', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(36, 'view data verifikasi rps', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(37, 'view data soal', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(38, 'view data verifikasi soal', 'web', '2024-06-18 08:49:30', '2024-06-18 08:49:30'),
(39, 'view dashboard super_admin', 'web', '2024-06-18 09:05:45', '2024-06-18 09:05:45'),
(40, 'view data hak akses', 'web', '2024-06-19 14:16:29', '2024-06-19 14:16:29'),
(41, 'view data role', 'web', '2024-06-25 10:54:04', '2024-06-25 10:54:04'),
(42, 'view dashboard user', 'web', '2024-06-26 00:13:03', '2024-06-26 00:13:03'),
(43, 'view dashboard dosen', 'web', '2024-06-26 00:13:03', '2024-06-26 00:13:03'),
(44, 'view dashboard kaprodi', 'web', '2024-06-26 00:18:27', '2024-06-26 00:18:27'),
(45, 'view dashboard pengurus', 'web', '2024-06-26 00:18:27', '2024-06-26 00:18:27'),
(46, 'view dashboard kajur', 'web', '2024-06-26 15:44:57', '2024-06-26 15:44:57'),
(47, 'crud rps', 'web', '2024-06-26 16:18:19', '2024-06-26 16:18:19'),
(48, 'crud soal', 'web', '2024-06-26 16:18:19', '2024-06-26 16:18:19'),
(49, 'crud verif rps', 'web', '2024-07-06 03:39:37', '2024-07-06 03:39:37'),
(50, 'crud verif soal', 'web', '2024-07-06 03:41:12', '2024-07-06 03:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan_jurusan`
--

CREATE TABLE `pimpinan_jurusan` (
  `id_pimpinan_jurusan` int(11) NOT NULL,
  `jabatan_pimpinan` varchar(100) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pimpinan_jurusan`
--

INSERT INTO `pimpinan_jurusan` (`id_pimpinan_jurusan`, `jabatan_pimpinan`, `id_jurusan`, `nama`, `periode`, `status`) VALUES
(1, 'Ketua Jurusan', 7, 'RONAL HADI, S.T, M.Kom', '2022-2026', '1'),
(3, 'Sekretaris Jurusan', 7, 'HUMAIRA, S.T, M.T', '2022-2026', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan_prodi`
--

CREATE TABLE `pimpinan_prodi` (
  `id_pimpinan_prodi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nidn` varchar(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_prodi` varchar(11) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `kode_jurusan` varchar(11) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `id_jabatan` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pimpinan_prodi`
--

INSERT INTO `pimpinan_prodi` (`id_pimpinan_prodi`, `nama`, `nidn`, `nip`, `kode_prodi`, `prodi`, `kode_jurusan`, `jurusan`, `periode`, `status`, `id_jabatan`) VALUES
(4, 'MERI AZMI, S.T, M.Cs', '0029068102', '198106292006042001', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3),
(5, 'RONI PUTRA, S.Kom, M.T ', '0022078607', '198607222009121004', '3MI', 'Manajemen Informatika D3', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3),
(6, 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', '198204152012121002', '3TK', 'Teknik Komputer D-3', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3),
(7, 'DEFNI, S.Si, M.Kom', '0007128104', '198112072008122001', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3),
(8, 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', '197809012008121001', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3),
(9, 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', '198808102019031012', '3MI-P', 'Manajemen Informatika (Pelalawan)', 'TI', 'Teknologi Informasi', '2022-2026', '1', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `kode_prodi` varchar(10) NOT NULL,
  `prodi` varchar(500) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_jenjang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `kode_prodi`, `prodi`, `id_jurusan`, `id_jenjang`) VALUES
(18, '3MI', 'Manajemen Informatika D-3', 7, 'D3'),
(19, '3TK', 'Teknik Komputer D-3', 7, 'D3'),
(20, '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 7, 'D4'),
(21, '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', 7, 'D3'),
(22, '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', 7, 'D3'),
(23, '3MI-P', 'Manajemen Informatika (Pelalawan)', 7, 'D3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_ta`
--

CREATE TABLE `proposal_ta` (
  `id_proposal_ta` int(255) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pembimbing_satu_nama` varchar(100) NOT NULL,
  `pembimbing_satu_nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pembimbing_dua_nama` varchar(100) NOT NULL,
  `pembimbing_dua_nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `proposal_ta`
--

INSERT INTO `proposal_ta` (`id_proposal_ta`, `nim`, `nama`, `judul`, `pembimbing_satu_nama`, `pembimbing_satu_nidn`, `pembimbing_dua_nama`, `pembimbing_dua_nidn`) VALUES
(1, '1701091031', 'Wara Ulan Saputri', 'PERANCANGAN SISTEM INFORMASI PENDAFTARAN DAN TES ONLINE PADA PONDOK PESANTREN BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(2, '1701091033', 'Dea Annona Prayetno Putri', 'Perancangan dan Implementasi Sistem Informasi Manajemen Rekam Medis dan Antrian Pasien pada Praktik Dokter Mandiri menggunakan Framework CodeIgniter', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(3, '1701081035', 'Silvia Angraini', 'Perancang Dan Implementasi Management Central Log Menggunakan Wazuh Di Virtualbox', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(4, '1701091018', 'Yulia Ramadhani', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PERPUSTAKAAN DENGAN TEKNOLOGI BARCODE DI SMK NEGERI 1 HILIRAN GUMANTI BERBASIS WEB.\r\n', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(5, '1701081027', 'Syahrul Gusti Hafendi', 'Implementasi Sistem Video conference menggunakan Jitsi dengan Amazon Web Services berbasis web di Jurusan Teknologi Informasi Politeknik Negeri Padang', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(6, '1701082019', 'Rendhika Aditya', 'Pembuatan Aplikasi E-Tourism Kuala Tungkal Berbasis Android', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(7, '1701092016', 'Novelia Desrina Putri', 'IMPLEMENTASI SISTEM INFORMASI PENGADAAN BARANG GUNA MENINGKATKAN PEMASARAN DAN PENGELOLAAN DATA PADA CV GOLDEN KEY', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(8, '1701091019', 'Fauziah Wulandari', 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI POLIKLINIK POLITEKNIK NEGERI PADANG', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(9, '1701092021', 'Ira Agustiana', 'Perancangan dan Implementasi Sistem Informasi Penjualan dan Pembelian pada Toko Aps.Laboratory Berbasis E-Commerce', 'MERI AZMI, S.T, M.Cs', '0029068102', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(10, '1701082012', 'Farhan Hafifi', 'SISTEM E-VOTING MENGGUNAKAN SENSOR FINGER PRINT DAN RFID UNTUK PEMILIHAN PRESIDEN MAHASISWA BERBASIS MOBILE\r\n', 'HUMAIRA, S.T, M.T', '0019038103', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(11, '1701081015', 'DEDE RAHMAN', 'PROMETHEUS DAN GRAFANA SEBAGAI PERANGKAT \r\nMONITORING DI SERVER TEKNOLOGI INFORMASI \r\nPOLITEKNIK NEGERI PADANG DENGAN SISTEM \r\nNOTIFIKASI TELEGRAM', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(12, '1701092022', 'Hexa Aristia', 'Perancangan dan Pembuatan Sistem Informasi Penerimaan Peserta Didik Baru (PPDB) Online Berbasis Web di Sekolah Pendidikan Khusus Serasi Kota Payakumbuh', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(13, '1701081034', 'Zulmaidi', 'Perancangan dan Implementasi Aplikasi Pencegahan Dini Kejahatan Berbasis Mobile Secara Realtime', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'HUMAIRA, S.T, M.T', '0019038103'),
(14, '1701081010', 'Roberto Firman', 'Implementasi Private Cloud Dengan Menggunakan Openstack Untuk Mata Kuliah Administrasi Server Di Jurusan Teknologi Informasi Program Studi Teknik Komputer Politeknik Negeri Padang', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(15, '1701082017', 'HADITYA HANAFI', 'RANCANGAN MEDIA PEMBELAJARAN PENGENALAN ALAT MUSIK TIUP TRADISIONAL ADAT MINANGKABAU BERBASIS AR(Augmented Reality)', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(16, '1701091010', 'Yenni Wati', 'Aplikasi Pemeliharaan dan Manajemen Aset Berbasis Web', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(17, '1701082015', 'Ikhsanul Fajri Yodani', 'Implementasi Metode Markerless Augmented Reality Pada Monumen Sejarah di Kota Padang', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(18, '1701081032', 'Muhammad Yosazikri Ikhsan', 'Aplikasi Digitalisasi Seni Bela Diri Silat Minangkabau', 'DEFNI, S.Si, M.Kom', '0007128104', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(19, '1701091035', 'Chapri Ramadhani', 'Sistem Informasi Evaluasi Kinerja Dosen di Politeknik Negeri Padang Berbasis Web', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'FAZROL ROZI, M.Sc.', '0021078601'),
(20, '1701091012', 'Isra Aini', 'Sistem Informasi Berbasis Web untuk Rawat Jalan di puskesmas magek', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(21, '1701082026', 'Resti Pebriani', 'IMPLEMENTASI CI/CD UNTUK AUTOMATIC DEPLOYMENT API MENGGUNAKAN JENKINS DI JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(22, '1701081031', 'ANGGIE MEIFRIYAN PRATAMA', 'Aplikasi Monitoring Air Pada Water Torn Secara Otomatis Berbasis Android Dan Di Dukung Oleh Mikrokontroller', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(23, '1701091091', 'Indah Permata Sari', 'SISTEM INFORMASI PEMINJAMAN TRANSPORTASI DINAS DI POLITEKNIK NEGERI PADANG BERBASIS WEB DENGAN  FRAMEWORK CODEIGNETER', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'FAZROL ROZI, M.Sc.', '0021078601'),
(24, '1701091034', 'Danny Atthaya', 'PEMBANGUNAN WEBSITE NEDD AUDIO PRODUCTION', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(25, '1701091007', 'Ilham Marjalis', 'SISTEM INFORMASI MADRASAH DINIYAH TAKMILIYAH\r\nAWALIYAH (MDTA) AR-RAHMAN KECAMATAN \r\nPARIAMAN UTARA KOTA PARIAMAN BERBASIS WEB\r\nFRAMEWORK LARAVEL ', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'FAZROL ROZI, M.Sc.', '0021078601'),
(26, '1701081029', 'Deo Febrino Mudri', 'Implementasi Augmented Reality Pada Mata Pelajaran Perakitan Komputer', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(27, '1701091002', 'Pratiwi Dwiyanti', 'Sistem Informasi Manajemen Kegiatan Santri Pondok Pesantren Modern Darussalam di Kabupaten Solok Berbasis Web', 'RASYIDAH, S.Si, M.M.', '0001067407', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(28, '1701091013', 'Arnila Cahya Febri Mendrofa', 'RANCANG BANGUN SISTEM BIMBINGAN ONLINE (LOGBOOK) MENGGUNAKAN FRAMEWORK LARAVEL ', 'DEFNI, S.Si, M.Kom', '0007128104', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(29, '1701091023', 'Fanny Laura', 'Sistem Informasi Penerimaan dan Pengeluaran Kas Serta Penggajian Di Unit Usaha Bank Sampah Nazhafa Kota Padang Pariaman Berbasis Web ', 'HUMAIRA, S.T, M.T', '0019038103', 'FAZROL ROZI, M.Sc.', '0021078601'),
(30, '1701092011', 'Aldo Serena', 'SISTEM INFORMASI BARBERSHOP PANGERAN TIGO', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(31, '1701092030', 'Siti Sa\'adiyah', 'Aplikasi Pasar Rabu Tani Berbasis Android', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(32, '1701082025', 'Hidayaturrahman', 'Perancangan Prototipe Warehouse Robot Transfer Dengan Sistem Pengalamatan Lokasi Barang', 'RONAL HADI, S.T, M.Kom', '0029017603', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(33, '1701091005', 'Sintia Agustin Padri', 'Perancangan Dan Implementasi Sistem Informasi Pengarsipan Surat Pada PT. Pasoka Sumber Karya Menggunakan Framework CodeIgniter', 'MERI AZMI, S.T, M.Cs', '0029068102', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(34, '1701091017', 'Rara Yulia Insani', 'RANCANG BANGUN SISTEM INFORMASI MANAJEMEN DI PONDOK TAHFIDZ MAJELIS TAZKIYAH MENGGUNAKAN FRAMEWORK CODEIGNITER', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(35, '1701092002', 'Rizka Putri Yulianda', 'PENDAFTARAN ONLINE SISWA BARU SEKOLAH DASAR NEGERI DI KABUPATEN SOLOK BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK LARAVEL DI ERA NEW NORMAL', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(36, '1701081038', 'Irfan Kurniawan', 'Pembuatan REST API Menggunakan NodeJS Dengan REST Client Aplikasi Android Untuk Transaksi Jasa Elektronik', 'HUMAIRA, S.T, M.T', '0019038103', 'FAZROL ROZI, M.Sc.', '0021078601'),
(37, '1701092003', 'Dimas Septian Andaleh', 'SISTEM INFORMASI AKADEMIK PADA SDLB FANREDHA BERBASIS WEB FRAMEWORK\r\nLARAVEL', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(38, '1701091004 ', 'Riri Silvani Dwi Putri ', 'Perancangan dan Implementasi Sistem Informasi Pemilihan Vendor di PT. Pasoka Sumber Karya', 'MERI AZMI, S.T, M.Cs', '0029068102', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(39, '1701081036', 'Ririn Vamori', 'RANCANG BANGUN SISTEM KEAMANAN DAN MONITORING KOTAK AMAL BERBASIS MIKROKONTROLER', 'HUMAIRA, S.T, M.T', '0019038103', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(40, '1701091025', 'Dora Grestya', 'Aplikasi Gorice Berbasis Android', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(41, '1701091009', 'Nilam Permata Bunda', 'Perancangan dan Pembuatan Sistem Informasi Kalibrasi di PT epson Batam', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(42, '1601082002', 'Yoga Yowanda Sugama', 'SISTEM TIRAI OTOMATIS MENGGUNAKAN SENSOR CAHAYA BERBASIS ANDROID DAN NODEMCU', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DEFNI, S.Si, M.Kom', '0007128104'),
(43, '1701081003', 'Ilham Hidayat', 'PERANCANGAN DAN IMPLEMENTASI LOAD BALANCING WEB SERVER ORCHESTRATION DOCKER SWARM BERBASIS RANCHER DI AWS', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(44, '1701081001', 'Elfiza', 'RANCANG BANGUN SISTEM INFORMASI LOWONGAN KERJA ALUMNI KAMPUS PNP DENGAN MENGGUNAKAN AWS EC2', 'FITRI NOVA, M.T, S.ST', '1029058502', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(45, '1601082004', 'Muhamad Rival', 'MEMBANGUN JARINGAN HOTSPOT BERBASIS RADIUS (REMOTE AUTHENTICATION DIAL IN USER SERVICE) SERVER DENGAN MENGGUNAKAN MIKROTIK RB951-2N DI SMK N 8 KOTA PADANG', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(46, '1701091003', 'Rina Yuliana', 'Perancangan sistem informasi manajemen dan promosi pada toko cahaya agung aluminium Pekanbaru', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(47, '1701092025', 'Fathrianda Komala Isral', 'Sistem Informasi Penjualan Obat Berbasis Web Framework Laravel pada Apotek Barokah Parak Laweh', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'FAZROL ROZI, M.Sc.', '0021078601'),
(48, '1701091011', 'Intan Rahma Wati', 'SISTEM INFORMASI INVENTORY BARANG PADA TOKO UD. ACIK  PADANG BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(49, '1701091030', 'Ratih Wahyuni Islami', 'SISTEM INFORMASI PEMESANAN JASA MAKEUP PADA RATIH MAKEUP BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(50, '1701092007', 'Afifah Widodo Putri', 'Sistem Informasi Perpustakaan Balai Bahasa Sumatera Barat Berbasis Web Menggunakan Framework Laravel', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(51, '1711082024', 'Vienne Anggelica Kurnia', 'Implementasi Algoritma Rabin-Karp untuk Penilaian Jawaban Essay Otomatis pada Ujian Online Berbasis Website', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'FAZROL ROZI, M.Sc.', '0021078601'),
(52, '1711082025', 'hidayatul sidiq', 'IMPLEMENTASI ALGORITMA HAVERSINE PADA ABSENSI KEPEGAWAIAN BERBASIS ANDROID  ', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HUMAIRA, S.T, M.T', '0019038103'),
(53, '1711082008', 'Cindi Klaudia Putri', 'KLASIFIKASI ALGORITMA NAIVE BAYES DALAM VALIDASI PREDIKSI DATA PEMINJAMAN BARANG INVENTARIS (Studi Kasus: CV. Persia Daya Energi)', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(54, '1711082026', 'Sarah Latifah Ma\'rif', 'Spk  pemilihan program studi di politeknik negeri padang menggunakan metode ahp dan saw', 'MERI AZMI, S.T, M.Cs', '0029068102', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(55, '1711082019', 'Boby Putra', 'Implementasi Jaringan Syaraf Tiruan untuk Prediksi Cuaca Pada PLTA Sumatera Barat', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(56, '1711082030', 'Syafila Tiara', 'Perancangan Aplikasi Pemesanan Jasa Tukang Bangunan Menggunakan Haversine Formula', 'DEFNI, S.Si, M.Kom', '0007128104', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(57, '1711082047', 'irsyadi sayid', 'Implementasi Sistem Informasi Daftar Pencarian Orang Menggunakan Algoritma RSA berbasis Android\r\n(Studi Kasus : Sentra Pelayanan Kepolisian Terpadu Polresta Padang)\r\n', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(58, '1711082036', 'Andre Des Rizaldi', 'Pembangunan Aplikasi Bank Soal UMPN untuk latihan calon mahasiswa Poli Teknik Negeri Padang berbasis WEB\r\n', 'RASYIDAH, S.Si, M.M.', '0001067407', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(59, '1711082050', 'Rizkhan Hadi', 'IMPLEMENTASI ARSITEKTUR MICROSERVICE DALAM PEMBUATAN APLIKASI PENJUALAN MAKANAN (MENGHITUNG JARAK DRIVER MENGGUNAKAN ALGORITMA HAVERSINE)', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(60, '1711082005', 'Taufik Hidayat', 'IMPLEMENTASI METODE COSINE SIMILARITY DAN TF-IDF PADA SISTEM INFORMASI PENGAJUAN JUDUL PROYEK AKHIR', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(61, '1711082002', 'Anjelin Andri', 'Perancangan Sistem E-MarketPlace berbasis Web di Kota Padang', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(62, '1711082012', 'Jihan Fadhilah', 'Implementasi Algoritma Cosine Similarity Pada Sistem Ujian Essay Di Sistem Akademik Berbasis Android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(63, '1711082003', 'Ramadhani', 'IMPLEMENTASI METODE SIMPLE MULTI ATTRIBUTE RATING TECHNIQUE UNTUK MENGEVALUASI PROSES BIMBINGAN PROYEK AKHIR MAHASISWA PROGRAM SARJANA TERAPAN TEKNOLOGI REKAYASA PERANGKAT LUNAK\r\n', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(64, '1711082020', 'Dewi Sartika', 'Deteksi Kualitas Grinder Kopi menggunakan Image Processing dan Neural Network', 'DEFNI, S.Si, M.Kom', '0007128104', 'FAZROL ROZI, M.Sc.', '0021078601'),
(65, '1711082022', 'Aqilla Novia Sukma', 'Fraud Detection Pada Aplikasi Akuntansi Pt Tre Jaya Shipping Menggunakan Algoritma K-Means\r\n', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(66, '1711082007', 'Farhan Pratama', 'ANALISA OUTLET POTENSIAL DI PT SANTINILUWANSA LESTARI GROUP CABANG PADANG MENGGUNAKAN METODE KMEANS DAN IMPLEMENTASI TOPSIS', 'DEFNI, S.Si, M.Kom', '0007128104', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(67, '1711082021', 'M. Aidil Putra', 'IMPLEMENTASI METODE NAIVE BAYES CLASSIFER UNTUK OPTIMALISASI PENCARIAN DOKUMEN PADA WEBSITE REPOSITORY JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(68, '1711082038', 'Eko Mulya Chandra', 'Implementasi Algoritma Rabin Karp Untuk Membantu Mendeteksi Plagiarisme Pada Karya Ilmiah (Studi Kasus : Program Studi Teknologi Rekayasa Perangkat Lunak Jurusan Teknologi Informasi Politeknik Negeri Padang)', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(69, '1711082051', 'Muhammad fahrurrozi', 'RANCANG BANGUN SISTEM INFORMASI TA(TUGAS AKHIR)  MAHASISWA PADA POLITEKNIK NEGERI PADANG BERBASIS WEB', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(70, '1711082052', 'Cecilya Lailaturahmi Hamedeko', 'Implementasi Data Warehouse Pada Perancangan Sistem Dashboard Akademik Jurusan Teknologi Informasi di Politeknik Negeri Padang', 'HUMAIRA, S.T, M.T', '0019038103', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(71, '1711082043', 'Dicky Hermiansyah Putra', 'Sistem Informasi Klinik Pratama Terintegrasi Deteksi Dini Covid-19', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(72, '1701082032', 'FAJAR SETYAWAN', 'ANALISA KEAMANAN JARINGAN WIRELESS DENGAN KALI LINUX', 'RONAL HADI, S.T, M.Kom', '0029017603', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(73, '1701082001', 'Khaira Aprinaldo Putra', 'Monitoring Polusi Udara dan Kebakaran Berbasis Smartphone', 'FITRI NOVA, M.T, S.ST', '1029058502', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(74, '1701082022', 'Nur Afuwa Ningtyas', 'IMPLEMENTASI TEKNOLOGI INTERNET OF THING PADA TEKNIK BUDIDAYA AKUAPONIK\r\n', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(75, '1701081009', 'Junia Riyani', 'Pengendalian Buka Tutup Pintu Rumah Menggunakan Android Dan Nodemcu', 'RONAL HADI, S.T, M.Kom', '0029017603', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(76, '1701082034', 'Chyntia Frandini', 'Monitoring Debu Berbasis Android Pada Lingkungan Sekitar Pabrik PT. Semen Padang', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(77, '1701081048', 'Muthia Afrinisa', 'Implementasi React Native dan Firebase Pada Aplikasi Konsultasi Online di Jurusan Teknologi Informasi', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(78, '1711082034', 'Elang Abdul Azis', 'PENERAPAN ALGORITMA A* DALAM PENCARIAN LOKASI GEDUNG PADA UNIVERSITAS ANDALAS BERBASIS WEB', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'HUMAIRA, S.T, M.T', '0019038103'),
(79, '1701082023', 'Naufal Ammar Miftah', 'PERANCANGAN DAN IMPLEMENTASI PROTOKOL HIGH AVAILABILITY NETWORK SEBAGAI BACKUP ROUTE GATEWAY MENGGUNAKAN ROUTER MIKROTIK DI PT SEWIWI INDONESIA', 'MERI AZMI, S.T, M.Cs', '0029068102', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(80, '1701091008', 'Sahrul Efendi', 'Rancang Bangun Sistem Informasi Manajemen Pasien pada Klinik Pratama Yossi Adhwa Menggunakan Framework Codeigniter', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(81, '1701082018', 'Hidayatul Fadhilah', 'Aplikasi Ujian Semester Online Untuk Siswa SDN 26 Cupak Menggunakan Metode REST Clien Pada Android \r\n\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(82, '1711082006', 'Resy Liza', 'Sistem Pengambil Keputusan Pemilihan Karyawan Teladan Menggunakan Metode AHP dan SMART (Studi Kasus : D\'Besto)', 'MERI AZMI, S.T, M.Cs', '0029068102', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(83, '1701081024', 'Athirah Ayu Toisuta', 'Implementasi Monitoring Log Server Berbasis Elasticsearch, Logstash Dan Kibana Menggunakan Ubuntu Server 18.04', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(84, '1711082016', 'Suci yolanda putri ', 'Sistem Pendukung Keputusan Penerimaan Mahasiswa Baru Jalur PMDK-PN di Politeknik Negeri Padang Menggunakan Metode Simple Additive Weighting', 'HUMAIRA, S.T, M.T', '0019038103', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(85, '1701081002', 'Febri Zummiati', 'Aplikasi Presensi Mahasiswa Menggunakan Teknologi QR-Code Berbasis Android', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(86, '1711082055', 'Gabriel Halsya Surya Darma', 'PENERAPAN METODE SIMPLE ADDITIVE WEIGHTING PADA SISTEM PENERIMAAN KARYAWAN BARU STASIUN PENGISIAN BAHAN BAKAR (SPBU)', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(87, '1711082049', 'Fachrully Rahman ', 'Prediksi Kelulusan Mahasiswa Menggunakan Metode NaÃ¯ve Baiyes Pada Jurusan Teknologi Informasi Politeknik Negeri Padang', 'HUMAIRA, S.T, M.T', '0019038103', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(88, '1701081040', 'CITRA SARI INDAH UTAMA PUTRI', 'TEKNIK VIRTUALISASI MANAJEMEN CONTAINER MENGGUNAKAN KUBERNETES SEBAGAI MESIN ORCHESTRATION', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(89, '1701081018', 'Reza Anugraha', 'Monitoring Pembuatan Alat Penyiram Tanaman Sebagai IOT Menggunakan NodeMcu Berbasis Android', 'DEFNI, S.Si, M.Kom', '0007128104', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(90, '1701092006', 'Annisa Hakimi Nasry', 'Perancangan dan Implementasi Sistem Informasi Enterprise Resource Planning (ERP) pada Toko Sulaman dan Bordiran Putri Ayu Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(91, '1701091022', 'Indra Zandi', 'SISTEM INFORMASI PENERIMAAN DONASI DAN ZAKAT, INFAQ DAN SEDEKAH (ZIS) PADA ETALASE SEDEKAH KOTA PADANG BERBASIS WEB FRAMEWORK LARAVEL', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(92, '1701082035', 'Afsri Ramayani', 'Aplikasi M-Commerce Admin Fresh Food  Berbasis Android', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(93, '1701082016', 'Yulianti', 'Sistem informasi ujian online SMA Negeri 1 Koto XI Tarusan dengan framework codeigniter berbasis web', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(94, '1701081008', 'Sean Rayhan', 'Membangun 3D Virtual Tour Rumah Gadang Istana Pagaruyung Menggunakan Unreal Engine 4 Berbasis Desktop', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(95, '1701081025', 'Dandi Adila Putra', 'IMPLEMENTASI INTEGRASI MOODLE DENGAN VIDEO CONFERENCE MENGGUNAKAN BIGBLUEBUTTON PADA UBUNTU 18.04 UNTUK PIHAK SMA NEGERI 1 BAYANG', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(96, '1601082010', 'Ivander Evan Manggala', 'Perancangan dan Pembuatan Security Helmet (Helmetty) Menggunakan Blynk', 'FITRI NOVA, M.T, S.ST', '1029058502', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(97, '1701081044', 'ABIM PRADANA PUTRA', 'APLIKASI PENGENALAN TARI TRADISIONAL MINANGKABAU MELALUI METODE AUGMENTED REALITY BERBASIS ANDROID', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(98, '1701092028', 'Rehanul Fikri Ilmi', 'Perancangan dan implementasi sistem informasi pengarsipan surat menggunakan framework Ruby on Rails di Kantor camat Pariaman Timur Kota Pariaman', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(99, '1701081022', 'Nitra Khaira Dini', 'Monitoring Botol Minum Pintar Berbasis Mikrokontroller', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(100, '1701092013', 'Taufik Yazidi', 'SISTEM INFORMASI RZ TOUR DAN TRAVEL BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL 7.0', 'RASYIDAH, S.Si, M.M.', '0001067407', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(101, '1711082054', 'Marisa Ayu Saphira', 'IMPLEMENTASI ALGORITMA BOYER MOORE PADA SISTEM INFORMASI ADMINISTRASI TATA USAHA BERBASIS WEBSITE DI SD ISLAM AL-AZHAR 32 KOTA PADANG', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(102, '1701081039', 'Auliatul Wahyudi', 'Implementasi REST API pada Aplikasi Ordering di Depot Air Minum Isi Ulang Berbasis Android', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(103, '1701082002', 'Yandri Syanurdi', 'Aplikasi Bimbingan Belajar Online Untuk Penyandang Disabilitas Tunarungu Berbasis Android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(104, '1701082020', 'Maulana Hanif Alfaro', 'Celengan Pintar Uang Koin Berbasis Arduino', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(105, '1701092009', 'Lokyta Indah Wulandari', 'PENGEMBANGAN SISTEM INFORMASI REPOSITORI TUGAS AKHIR JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG MENGGUNAKAN FRAMEWORK LARAVEL', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(106, '1701092029', 'Satria Rahmat Putra', 'SISTEM INFORMASI MANAJEMEN KEUANGAN BERBASIS WEBSITE PADA KOPERASI MANDIRI DAN MERDEKA \r\n', 'DEFNI, S.Si, M.Kom', '0007128104', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(107, '1701091001', 'Siti Aisyah', 'Geographic Information System Menara Kota Bukittinggi Menggunakan Framework Laravel 6.0', 'RASYIDAH, S.Si, M.M.', '0001067407', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(108, '1701091027', 'Ratna Mayang Suri', 'SISTEM INFORMASI CUTI KEPEGAWAIAN DISKOMINFO KOTA BUKITTINGGI', 'DEFNI, S.Si, M.Kom', '0007128104', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(109, '1701081043', 'Petrus Kanisius Taplo kaize', 'Alat Pembantu penyiraman tanaman secara otomatis Berbasis IOT', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(110, '1701082030', 'HERU SAMUDERA', 'smarthome pengendalian perangkat elektronik berbasis mikrocontroler dengan android', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(111, '1701091036', 'Sobian Chaniago', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI SEKOLAH DI SD N 02 PAMPANGAN', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(112, '1701082021', 'Rahmatul Azizah', 'Smart Trash Bin dan Monitoring dengan Aplikasi Android pada Smartphone Berbasis IoT', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(113, '1701091046', 'Maya Lestari', 'Sistem Informasi Perpustakaan MIN 1 Pasaman Barat Menggunakan Framework Yii2 & MySQL', 'RASYIDAH, S.Si, M.M.', '0001067407', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(114, '1701091028', 'Prima Tri Dewi', 'SISTEM INFORMASI PENJUALAN IKAN LAUT PADA TEMPAT PELELANGAN IKAN (TPI) AIR BANGIS PASAMAN BARAT BERBASIS WEB', 'RONAL HADI, S.T, M.Kom', '0029017603', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(115, '1701091024', 'Fuji Rahayu', 'Sistem Informasi Koperasi SMPN 2 Nan Sabaris', 'HUMAIRA, S.T, M.T', '0019038103', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(116, '1701081012', 'GERRI HERMAWAN', 'MONITORING SUHU DAN KELAMBABAN PADA MESIN PRODUKSI BERBASIS IOT DI PT JAPFA COMFEED INDONESIA TBK PADANG ', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(117, '1601082001', 'Resi Armelia', 'Penerapan IOT Pada Ruang Kelas Menggunakan Protokol Keamanan MQTT', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(118, '1701091016', 'Nurlaily', 'SISTEM INFORMASI PELAYANAN ADMINISTRASI KEPENDUDUKAN ONLINE DI KANTOR WALI NAGARI KAJAI BERBASIS WEB', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(119, '1701091021', 'Yolanda', 'SISTEM INFORMASI BERBASIS WEB DENGAN LARAVEL FRAMEWORK UNTUK PENGELOLAAN PROGRAM TAHFIZH PADA RUMAH TAHFIZH AHLUL QURAN(MODUL TAHFIZH HARIAN)', 'DEFNI, S.Si, M.Kom', '0007128104', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(120, '1701092014', 'Rifky Aldiansyah Pratama', 'Sistem Informasi Pemasaran Rumah Pada PT. Putra Permata Persada Berbasis Web', 'MERI AZMI, S.T, M.Cs', '0029068102', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(121, '1701091048', 'Aditya Fattah A.', 'PERANCANGAN DAN PEMBUATAN SISTEM INFORMASI BIMBINGAN KONSELING SMP NEGERI 1 BATANG ANAI BERBASIS WEB DAN MOBILE', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(122, '1701092004', 'Jehan Fauziah Annisa', 'SISTEM INFORMASI PARIWISATA BERBASIS WEB SEBAGAI MEDIA PROMOSI PADA PROVINSI SUMATERA BARAT', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(123, '1701092019', 'Muhammad Adzka Syarif', 'Aplikasi Pemesanan Lapangan Futsal di Kota Padang Berbasis Android\r\n', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(124, '2211089008', 'MIFTAHURRAHMI', 'SISTEM INFORMASI BERBASIS WEB  DENGAN LARAVEL FRAMEWORK UNTUK PENGELOLAAN PROGRAM TAHFIZH PADA RUMAH TAHFIZH AHLUL QURAN (MODUL : TAHFIZH DAURAH)', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(125, '1601081036', 'Muhammad Fajri', 'Alat Pengatur Suhu Otomatis untuk Penetasan Telur Ayam Berbasis Mikrokontroler dan Android Menggunakan Server AWS (Amazon Web Service)', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(126, '1701082004', 'Hayatul Azian', 'Implementasi Server Monitoring menggunakan Nagios dengan Notifikasi Telegram Messenger di AWS EC2', 'RONAL HADI, S.T, M.Kom', '0029017603', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(127, '1601081013', 'Abd Aziz Saleh Batubara', 'PERANCANGAN DAN IMPLEMENTASI MONITORING HIDROPONIK DENGAN NODE MCU BERBASIS ANDROID DAN WEB MENGGUNAKAN SERVER AWS(AMAZON WEB SERVICES)', 'DEFNI, S.Si, M.Kom', '0007128104', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(128, '1701082005', 'Adityo Ferry', 'RANCANG BANGUN ALAT SISTEM MONITORING VOLUME AIR PADA TANGKI AIR BERBASIS TELEGRAM DENGAN MIKROKONTROLER NODEMCU', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'DEFNI, S.Si, M.Kom', '0007128104'),
(129, '1701081028', 'Farid Fauzan', 'Perancangan public Spring Java REST API pada JBoss Fuse dan reverse proxy Server', 'HUMAIRA, S.T, M.T', '0019038103', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(130, '1701081011', 'PEGGY PRATAMA', 'K-DAI (aplikasi E-Commerce dengan React-Native firebase)', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(131, '1601082025', 'Yovi Rezki Putra', 'RANCANG BANGUN ALAT SISTEM MONITORING AIR PADA DEPOT AIR MINUM MENGGUNAKAN SENSOR TDS DAN SENSOR pH BERBASIS ANDROID DENGAN MIKROKONTROLER ARDUINO UNO', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(132, '1701091053', 'Hanif Marshal', 'SISTEM INFORMASI PENGOLAHAN DATA PENDUDUK DI NAGARI BIDAR ALAM BERBASIS WEB FRAMEWORK CODEIGNITER', 'RASYIDAH, S.Si, M.M.', '0001067407', 'DEFNI, S.Si, M.Kom', '0007128104'),
(133, '1701081033', 'annisa mutiathul jannah', 'APLIKASI TRACER STUDY DI JURUSAN TEKNOLOGI INFORMASI', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(134, '1701092027', 'Wulan Yulia Maizoni', 'SISTEM INFORMASI PENGADUAN LAYANAN KESEHATAN DI PUSKEMAS PAUH BERBASIS WEB', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(135, '1701082010', 'Intan Putri Johan', 'RANCANG BANGUN TONG SAMPAH PINTAR BERBASIS IOT(Internet of Things) ', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(136, '1701082024', 'Novita Sari', 'Perancangan dan Implementasi Private Cloud Storage menggunakan nextcloud dan notifikasi Monitoring melalui Telegram', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(137, '1701091038', 'Aqbil Gilang Arsika', 'IMPLEMENTASI SISTEM INFORMASI PURCHASE ORDER MONITORING DAN MANAJEMEN KEUANGAN PADA TOKO ONLINE WARNAWS MENGGUNAKAN FRAMEWORK CODEIGNITER', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEFNI, S.Si, M.Kom', '0007128104'),
(138, '1701092015', 'Fitra Febrian', 'PERANCANGAN SISTEM INFORMASI MANAJEMEN BARANG PADA PERUSAHAAN RITEL BAHAN BANGUNAN MENGGUNAKAN FRAMEWORK CODEIGNITER ', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(139, '1701081005', 'Cilvia Chairunnisa', 'Perancangan OpenVPN Server Menggunakan Ubuntu Server 20.04 LTS', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(140, '1701092001', 'Indri Dwi Ryandari', 'Penerapan Augmented Reality Sebagai Media Pembelajaran Dalam Pengenalan Motherboard', 'HUMAIRA, S.T, M.T', '0019038103', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(141, '1701081004', 'Nanda Fernando', 'MONITORING JARINGAN MENGGUNAKAN CACTI DENGAN NOTIFIKASI TELEGRAM PADA DINAS KOMUNIKASI DAN INFORMATIKA KOTA PADANG', 'HUMAIRA, S.T, M.T', '0019038103', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(142, '1701092008', 'Rizka Adinda Putri', 'IMPLEMENTASI SISTEM INFORMASI AKADEMIK SD ISLAM TERPADU BAITUL HAMDI PADANG MENGGUNAKAN PHP DAN MYSQL', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(143, '1501082015', 'Aldio Caesar Hidayat', 'Penetration Test Web Server Menggunakan Sistem Operasi Kali Linux', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'DEFNI, S.Si, M.Kom', '0007128104'),
(144, '1711082035', 'Razitul Ikhlas', 'IMPLEMENTASI ARSITEKTUR MICROSERVICE DALAM PEMBANGUNAN E-MARKET PLACE DAN PENERAPAN ALGORITMA SAW PADA PROSES PENCARIAN DRIVER', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(145, '1711082033', 'Alfiadi Adha', 'Sistem Pendukung Keputusan Penerimaan Mahasiswa Magang Menggunakan Metode SAW (Simple Additive Weighting) Studi Kasus Bank Nagari Pusat Kota Padang', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEFNI, S.Si, M.Kom', '0007128104'),
(146, '1701091044', 'Wiwik Oktriliani', 'PERANCANGAN DAN IMPLEMENTASI WEBSITE SISTEM PENGAMBILAN KEPUTUSAN UNTUK MENENTUKAN JURUSAN PADA SISWA SMA MENGGUNAKAN METODE SMART', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(147, '1701081026', 'Shavira Triamanda', 'Pemantauan Aset Perkantoran Berbasis React-Native', 'FITRI NOVA, M.T, S.ST', '1029058502', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(148, '1701091043', 'Bunga Putri Dipenti', 'Perancangan Sistem Informasi Pengarsipan Surat Masuk dan Surat Keluar Dinas Pendidikan Kota Payakumbuh\r\n', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(149, '1701091029', 'Lina Wahyuni', 'APLIKASI PENDAFTARAN TRAINING PADA PERUSAHAAN UDACODING BERBASIS ANDROID', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(150, '1701091040', 'Ifayola Desdian', 'System information Geographic kantor pemerintahan kota solok', 'DEFNI, S.Si, M.Kom', '0007128104', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(151, '1711082029', 'Muhammad Abdur Rozak', 'PERANCANGAN DESIGN UI/UX UNTUK PORTAL PT. TRI PERKASA \r\nJAYATAMA MENGGUNAKAN METODE DESIGN THINKING', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(152, '1711082044', 'Ichlashio Madheswara', 'sistem pendukung keputusan penerimaan siswa baru tingkat sma/smk padang panjang menggunakan metode profile matching', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(153, '1701091026', 'Isnaini', 'Sistem Informasi Penjualan Sepeda Motor Bekas  pada Dealer Mutiara Motor Berbasis Web', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'HUMAIRA, S.T, M.T', '0019038103'),
(154, '1701092023', 'Soultan Alfath Syahelsa', 'SISTEM INFORMASI E â€“ COMMERCE  BERBASIS WEBSITE PADA TOKO MASTER KOMPUTER PADANG', 'RASYIDAH, S.Si, M.M.', '0001067407', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(155, '1711082041', 'Banny Akbar', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN UNIT KEGIATAN MAHASISWA DI POLITEKNIK NEGERI PADANG MENGGUNAKAN METODE AHP DAN SAW BERBASIS WEB\r\n', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(156, '1701092012', 'Lakdar Afrento', 'PERANCANGAN DAN PEMBUATAN E-COMMERCE PADA TOKO TANI INDONESIA CENTER KOTA PADANG MENGGUNAKAN LARAVEL', 'DEFNI, S.Si, M.Kom', '0007128104', 'FAZROL ROZI, M.Sc.', '0021078601'),
(157, '1701081046', 'Monika Listiana Putri', 'Implementasi Analitycal Network Process (ANP) Pada Sistem Pendukung Keputusan Pemilihan Pegawai Berprestasi di Dinas Kesehatan Kabupaten Pasaman', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FAZROL ROZI, M.Sc.', '0021078601'),
(158, '1711082039', 'Filrza Artavio', 'SISTEM PAKAR PENENTUAN TINGKAT KEMATANGAN ANAK DENGAN METODE FORWARD CHAINING', 'DEFNI, S.Si, M.Kom', '0007128104', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(159, '1711082037', 'Alkhairul Yoga', 'Sistem Manajemen UJK LSP P1-PNP (Modul Ujian)', 'DEFNI, S.Si, M.Kom', '0007128104', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(160, '1711082028', 'Zahri Hasanati', 'IMPLEMENTASI METODE JARINGAN SYARAF TIRUAN BACKPROPAGATION DALAM SISTEM E-NOSE UNTUK MONITORING LINGKUNGAN', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'HUMAIRA, S.T, M.T', '0019038103'),
(161, '1711082032', 'Wahyu Alfandry Pulungan', 'Sistem Manajemen UJK LSP P1-PNP (Modul Pemberkasan)', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(162, '1711082014', 'Lathifah Hanum', 'Klasifikasi Profil Lulusan Mahasiswa Berdasarkan Nilai Mata Kuliah Menggunakan Metode K Nearest Neighbor', 'FAZROL ROZI, M.Sc.', '0021078601', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(163, '1701081007', 'Nurul Maulida', 'Implementasi Virtualisasi Server Menggunakan VMware ESXi Di Jurusan Teknologi Informasi Politeknik Negeri Padang\r\n', 'FITRI NOVA, M.T, S.ST', '1029058502', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(164, '1701081016', 'NAILIL FATMI', 'IINTRUSION DETECTION SYSTEM (IDS)\r\nMENGGUNAKAN SNORT DI AWS UBUNTU 18.04 LTS\r\nDENGAN NOTIFIKASI TELEGRAM', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(165, '1701081047', 'Teguh Yudianto', 'Implementasi Traffic Monitoring Berbasis Software Defined Network (SDN) Menggunakan Ryu Controller', 'RONAL HADI, S.T, M.Kom', '0029017603', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(166, '1701082009', 'Bima Ardiansyah', 'Perancangan dan Pembuatan Application Load Balancing Menggunakan AWS', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(167, '1701081045', 'Andro Osvaldo', 'Perancangan Prototype Water Flow Counter Berbasis Telegram Dengan Mikrokontroler NodeMCU', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(168, '1701081014', 'Syukria Fiki', 'APLIKASI PEMESANAN AIR GALON ONLINE DENGAN FITUR TRACKING POSISI PENGANTAR GALON BERBASIS ANDROID \r\n', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(169, '1701082029', 'Merina Savitri', 'Membangun Virtual Lab Mata Kuliah Internet of Things menggunakan jupyter notebook', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(170, '1701081013', 'Sistri Indah Purnama', 'Fitting Cerdas Berbasis Internet of Things (IoT)', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'HUMAIRA, S.T, M.T', '0019038103'),
(171, '1601081028', 'Alfajri Maulana Ibrahim', 'RANCANGAN PROTOTYPE SISTEM KEAMANAN PINTU RUMAH BERBASIS CLOUD COMPUTING', 'HUMAIRA, S.T, M.T', '0019038103', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(172, '1701091045', 'Putri Ramadhani ', 'PEMBANGUNAN SISTEM INFORMASI MANAJEMEN PADA PONDOK TAHFIDZ YAYASAN DARUL QUR\'AN ISLAMIC CENTRE RAO (ICR) BERBASIS WEB', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(173, '1701081026b', 'Shavira Triamanda', 'Aplikasi Pemantauan Aset Perkantoran Berbasis React-Native', 'FITRI NOVA, M.T, S.ST', '1029058502', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(174, '1701091014', 'Debi Regita Senja Untari', 'APLIKASI JUAL-BELI SAYUR (MY VEGE) BERBASIS ANDROID', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'DEFNI, S.Si, M.Kom', '0007128104'),
(175, '1701092024', 'Helmia Safni', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PRESENSI PADA LPTIK UNIVERSITAS ANDALAS MENGGUNAKAN LARAVEL', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(176, '1701091052', 'fellicia', 'SISTEM INFORMASI PARIWISATA KOTA PADANG BERBASIS WEB\r\n', 'FITRI NOVA, M.T, S.ST', '1029058502', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(177, '1701091039', 'Sonya Halimah', 'SISTEM INFORMASI SERVICE MOTOR PADA SAUDARA MOTOR KOTA SOLOK', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(178, '1701081042', 'Nur Jaini', 'PENGIMPLEMENTASIAN INTERNET OF THINGS PADA SISTEM MANAJEMEN KEHADIRAN MENGGUNAKAN METODE FACE RECOGNITION BERBASIS WEB', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(179, '1701092010', 'Sari Noviani', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI MANAJEMEN PERALATAN DAN PERLENGKAPAN JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG BERBASIS WEB', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(180, '1701082014', 'Mechy Adelia', 'PERANCANGAN DAN PEMBUATAN APLIKASI ELEARNING BERBASIS MOBILE MENGGUNAKAN FRAMEWORK REACT NATIVE UNTUK MAHASISWA', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(181, '1701081049', 'Doni Azmara', 'Implementasi Rest Api Pada Aplikasi Pendaftaran Dan pemeriksaan Pasien Klinik Berbasis Android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(182, '1501081047', 'Deri Gustianto', 'MEMBANGUN PRIVATE CLOUD STORAGE MENGGUNAKAN OWNCLOUD SEBAGAI MEDIA PENYIMPANAN DATA E-LEARNING PADA SMKN 8 PADANG', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(183, '1701091041', 'rere salpajuta', 'SISTEM INVENTORY UNTUK TOKO PERCETAKAN BERBASIS WEB ', 'RONAL HADI, S.T, M.Kom', '0029017603', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(184, '1701082007', 'Rizky Revaldy', 'DISASTER  RECOVERY  PLAN JARINGAN DENGAN SISTEM  BACKUP OTOMATIS MIKROTIK MENGGUNAKAN METODE FILE TRANSFER PROTOCOL PADA JARINGAN WAN PT.SEWIWI INDONESIA', 'HUMAIRA, S.T, M.T', '0019038103', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(185, '1801091007', 'Fahmi Abdul Aziz', 'Sistem Informasi E-Marketplace berbasis Android Untuk  Politeknik Negeri Padang', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(186, '1801092013', 'Elsa Nelzi', 'SISTEM INFORMASI PENJUALAN DAN PEMESANAN PRODUK UKM MERAPI GOAT FARM BERBASIS PROGRESSIVE WEB APPS MENGGUNAKAN FRAMEWORK LARAVEL', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(187, '1801091002', ' Yolla Fernanda', 'PENGEMBANGAN SISTEM INFORMASI REPOSITORI TUGAS AKHIR POLITEKNIK NEGERI PADANG MENGGUNAKAN FRAMEWORK LARAVEL', 'RASYIDAH, S.Si, M.M.', '0001067407', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(188, '1801091032', 'Tasha Tasmiati ', 'PERANCANGAN DAN PEMBUATAN WEBSITE \r\nTOKO ONLINE KARANGAN BUNGA \r\nPADA DUBESSEVEN FLORIST MENGGUNAKAN LARAVEL', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(189, '1801092009', ' Zelli Oktariana', 'SISTEM INFORMASI POSYANDU IBU HAMIL DAN ANAK BALITA PADA PUSKESMAS PAUH BERBASIS WEB MENGGUNAKAN FRAMEWORK  LARAVEL', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(190, '1801091001', 'Suri Hanifah ', 'PEMBANGUNAN APLIKASI PEMINJAMAN ALAT \r\nLABOR DI JURUSAN TEKNOLOGI INFORMASI (TI) POLITEKNIK \r\nNEGERI PADANG(PNP) BERBASIS MOBILE', 'DEFNI, S.Si, M.Kom', '0007128104', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(191, '1801091015', ' Fira Faradilla', 'RANCANG BANGUN APLIKASI BOOKING SERVICE KENDARAAN BERMOTOR BERBASIS WEB', 'RASYIDAH, S.Si, M.M.', '0001067407', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(192, '1801092007', 'Irna Fitri Yanti ', 'SISTEM INFORMASI MANAJEMEN KEUANGAN MDTA RAUDHATUL ILMI', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(193, '1801092001', ' Akhiratunnisa Hasanah ', 'RANCANG BANGUN SISTEM INFORMASI PELAYANAN JASA JAHIT BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(194, '1801091009', ' Rizna Yusmilanda Purba', 'RANCANG BANGUN SISTEM INFORMASI AKADEMIK PADA SD QURAN USWATUN HASANAH MENGGUNAKAN FRAMEWORK CODEIGNITER', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(195, '1801091030', ' Merisa Adha Azzahra', 'IMPLEMENTASI SISTEM INFORMASI INVENTORY MENGGUNAKAN REACT JS DAN REACT-NATIVE', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(196, '1801091023', 'Juni Safitri ', 'SISTEM INFORMASI ALUMNI DI SMK NEGERI 1 KINALI BERBASIS WEB', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(197, '1801091011', ' Rika Marsoviana', 'RANCANG BANGUN APLIKASI TRAINING MANAGEMENT MENGGUNAKAN FRAMEWORK LARAVEL DI PT. KODING TEKNOLOGI ASIA', 'DEFNI, S.Si, M.Kom', '0007128104', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(198, '1801092028', ' Fitri Handayani ', 'SISTEM INFORMASI PELAYANAN MASYARAKAT PADA KANTOR WALI NAGARI ANDURING BERBASIS WEB', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(199, '1801092029', ' Sarinah Erat', 'Sistem Informasi Pelayanan Jasa Studio Foto Radja Menggunakan Framework Laravel', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(200, '1801092008', 'Muhammad Irfan Fadhilah ', 'RANCANG BANGUN SISTEM INFORMASI MANAJEMEN RUMAH TAHFIDZ SHOHIBUL QURâ€™AN PANDAI SIKEK MENGGUNAKAN FRAMEWORK CODEIGNITER BAGIAN PENGAJAR', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(201, '1801091028', ' Alvikri Mukhlis ', 'RANCANG BANGUN SISTEM INFORMASI MANAJEMEN RUMAH TAHFIDZ SHOHIBUL QURâ€™AN PANDAI SIKEK MENGGUNAKAN FRAMEWORK CODEIGNITER BAGIAN SANTRI', 'HUMAIRA, S.T, M.T', '0019038103', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(202, '1801092002', ' Haura Fathinah', 'RANCANG BANGUN SISTEM MEMBERSHIP DAN ANTREAN MENGGUNAKAN CODEIGNITER  PADA BAGINDO YD CAR WASH', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(203, '1801092010', ' Teten Dwi Rahmi Kiflinda', 'RANCANG BANGUN APLIKASI PEMESANAN MATERIAL BANGUNAN BERBASIS MOBILE PADA TOKO TELATEN KARYA \r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(204, '1801091027', ' Mutia Hulwah Nur Alif', 'APLIKASI MARKETPLACE UNTUK PEMASARAN HASIL PERTANIAN BERBASIS MOBILE (STUDI KASUS DI NAGARI ALAHAN PANJANG)', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(205, '1801091016', ' Elsa Annisa Sabri', 'PERANCANGAN DAN IMPLEMENTASI PELAYANAN KESEHATAN BERBASIS WEB DI KLINIK BIDAN YES NINI  \r\n\r\n', 'DEFNI, S.Si, M.Kom', '0007128104', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(206, '1801091020', 'Elfi Susanti', 'PERANCANGAN DAN IMPLEMENTASI \r\nSISTEM PENUNJANG KEPUTUSAN PENERIMA BEASISWA\r\n DI SMPN 5 X KOTO BERBASIS WEB ', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(207, '1801091005 ', 'Angga Lorenza ', 'PERANCANGAN DAN PEMBUATAN SISTEM INFORMASI\r\n PRAKTEK KERJA LAPANGAN SMK NEGERI 1 TANJUNG RAYA\r\n', 'RASYIDAH, S.Si, M.M.', '0001067407', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(208, '1801091014', 'Ilfiza Mutia Rahmi ', 'Aplikasi Marketplace Jasa Percetakan kota Solok Berbasis Web', 'HUMAIRA, S.T, M.T', '0019038103', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(209, '1801091026', ' Safira Putri Nabila', 'RANCANG BANGUN SISTEM INFORMASI NAGARI PADA NAGARI GUNUNG RAJO', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(210, '1801091018', ' Riski Desri Hafani ', 'Sistem Informasi Penjadwalan Rapat Online Berbasis Web Menggunakan Framework Laravel Pada Badan Kepegawaian Dan Pengembangan Sumber Daya Manusia Kota Padang', 'RONAL HADI, S.T, M.Kom', '0029017603', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(211, '1801091035', ' Rades Saputri ', 'Perancangan dan implementasi E-commerce pada Toko Ainy Shoes menggunakan framework laravel', 'RONAL HADI, S.T, M.Kom', '0029017603', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(212, '1801092012', ' Salsabila Defris Putri', 'RANCANG BANGUN APLIKASI PEMESANAN PERLENGKAPAN OLAHRAGA BERBASIS MOBILE PADA TOKO PERMINDO SPORT', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(213, '1801091031', ' Muflihah Indra ', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI KOPERASI PENGADILAN AGAMA PADANG BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER', 'MERI AZMI, S.T, M.Cs', '0029068102', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(214, '1801091003', ' Alissa Dori ', 'Aplikasi Pemesanan Makanan dan Minuman Berbasis Client-Server (Studi Kasus : Deall\'s Coffee Shop)', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(215, '1801091006', 'Dinda Meivianti Dwi Putri', 'Sistem Informasi Taman Pendidikan Al-Qur\'an Mesjid Al-Jamaah Menggunakan Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(216, '1801081025', 'Nova Putri Octaviani ', 'AWS CLOUD SERVER SEBAGAI IMPLEMENTASI APLIKASI DONOR DAN JEMPUT DARAH DENGAN TEKNOLOGI OPEN STREET MAPS DAN JWT TOKEN BERBASIS ANDROID', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(217, '1801081026', 'Rahmat Almubarak', 'Implementasi Server Web dan Next Cloud untuk Aplikasi RT berbasis Android', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'HUMAIRA, S.T, M.T', '0019038103'),
(218, '1801081021', 'Faizura Zadri', 'IMPLEMENTASI DevOps MENGGUNAKAN AMAZON WEB SERVICE PADA APLIKASI WEB', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(219, '1801082001', 'Fatzryah Virantika', 'IMPLEMENTASI CICD UNTUK AUTOMATIC DEPLOYMENT MENGGUNAKAN AWS CODEPIPELINE DI AWS', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(220, '1801082007', 'Indra Ramadani', 'MEMBANGUN INFRASTRUKTUR DAN KEAMANAN JARINGAN TERHADAP SERANGAN DOS DENGAN MENGGUNAKAN OPEN SOURCE PLATFORM PFSENSE', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(221, '1801082011', 'Andre Kurniawan', 'Implementasi Konfigurasi Server Menggunakan Ansible', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801');
INSERT INTO `proposal_ta` (`id_proposal_ta`, `nim`, `nama`, `judul`, `pembimbing_satu_nama`, `pembimbing_satu_nidn`, `pembimbing_dua_nama`, `pembimbing_dua_nidn`) VALUES
(222, '1801081002 ', 'Muhammad Idris', 'Sistem Kontrol dan Monitoring Kolam Ikan Berbasis IoT', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'FAZROL ROZI, M.Sc.', '0021078601'),
(223, '1801082002 ', 'Dwi Suci Amelia', 'RANCANG BANGUN SISTEM MONITORING SUHU DAN KELEMBABAN TANAH SERTA PENYIRAMAN OTOMATIS PADA TANAMAN BUAH NAGA BERBASIS IOT MENGGUNAKAN SERVER AWS', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(224, '1801082004', 'Nadila Wellyno Putri', 'RANCANG BANGUN PERANGKAT KERAS SMART FARMING PADA TANAMAN CABAI BERBASIS IOT DAN ANDROID', 'FITRI NOVA, M.T, S.ST', '1029058502', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(225, '1801081013', 'Fawziah Tul Ardia', 'Simulasi Software Defined Network Menggunakan OpenFlow dan Onos Sebagai Controller', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'HUMAIRA, S.T, M.T', '0019038103'),
(226, '1701081030', 'Fachru Ramadhan', 'IMPLEMENTASI CLOUD COMPUTING PADA SISTEM MONITORING SUHU DAN JUMLAH PENGUNJUNG PADA KAFE SOBAT', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(227, '1801081012', 'Julita Sari ', 'Membangun Infrastruktur Internet of Things Berbasis AWS Menggunakan Protokol MQTT', 'HUMAIRA, S.T, M.T', '0019038103', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(228, '1801092025', 'Habib Faruqi ', 'SISTEM INFORMASI AKADEMIK SDLB TUNA RUNGU BERBASIS WEB FRAMEWORK LARAVEL ', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(229, '1801082026', 'Taufik Ihsan Efendi', 'MONITORING PEMELIHARAAN DAN PEMBERIAN PAKAN OTOMATIS  PADA BIBIT IKAN KOMED  BERBASIS IOT DAN WEB', 'FITRI NOVA, M.T, S.ST', '1029058502', 'DEFNI, S.Si, M.Kom', '0007128104'),
(230, '1801082022', 'Ahmad Givantri Haykal', 'Media Pembelajaran Proses Solder dan Desoldering berbasis Augmented Reality', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(231, '1801082020', 'Dinda Tria Febri Yansyah', 'Implementasi Monitoring Kesehatan dengan Variabel Suhu dan Detak Jantung pada Sapi Menggunakan Infrastruktur AWS Studi Kasus PD. Peternakan Nusa Fauna', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(232, '1801091021 ', 'Andra Gusman', 'SISTEM INFORMASI PENGAJUAN CUTI PEGAWAI DISKOMINFO TANAH DATAR BERBASIS WEB', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(233, '1801082028', 'Nicky Yulia Ameris', 'Pemantauan Keamanan Lingkungan Kandang Sapi Berbasis IoT', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(234, '1801092003', ' Ronaldion Aditya ', 'PERANCANGAN DAN IMPLEMENTASI APLIKASI U-MENTORING UDACODING MENGGUNAKAN BAHASA KOTLIN', 'MERI AZMI, S.T, M.Cs', '0029068102', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(235, '1801092023', ' Yenni Yunnita', 'SISTEM NOTULA RAPAT PADA JURUSAN TEKNOLOGI INFORMASI BERBASIS WEB MENGGUNAKAN FRAMEWORK YII2', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(236, '1801082019', 'Muhammad Fitra Reza', 'PEMANTAUAN POSISI DAN PERGERAKAN SAPI BERBASIS IOT (SENSOR GPS, GYROSCOPE, DAN ACCELEROMETER)', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(237, '1801091025 ', 'Fadhilah Febriani', 'Sistem Informasi Peminjaman Gedung Politeknik Negeri Padang Berbasis Progressive Web Application Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(238, '1801081024', 'Berlina Febrianti ', 'PEMANFAATAN TEKNOLOGI VIRTUAL REALITY PADA MEDIA PEMBELAJARAN PENGUKURAN MULTIMETER', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(239, '1801082016', 'Suci Ramadhani', 'Pemanfaatan Teknologi Augmented Reality sebagai Media Pembelajaran pada Pengenalan Komponen Dasar Elektronika Berbasis Android di Kampus Politeknik Negeri Padang', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(240, '1801081016', 'Nenda Yunita', 'IMPLEMENTASI TEKNOLOGI VIRTUAL REALITY PADA MEDIA PEMBELAJARAN PENGENALAN KOMPONEN PERAKITAN KOMPUTER DI POLITEKNIK NEGERI PADANG', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(241, '1801081001', 'Yosi Julia Masni', 'PENERAPAN WEBSERVER DI SISTEM ESP32 UNTUK MENAMPILKAN HASIL MONITORING SUHU DAN KELEMBABAN RUANGAN\r\n', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(242, '1801092014', ' Naufal Ihsanul Rasyid ', 'APLIKASI REQUEST DONOR DARAH MENGGUNAKAN FRAMEWORK LARAVEL STUDI KASUS PMI KABUPATEN AGAM', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(243, '1801092021', 'Mufi Arwa', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI E-RAPOR  DI SD NEGERI 02 CUPAK TANGAH', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'FAZROL ROZI, M.Sc.', '0021078601'),
(244, '1801082005', 'Fhadel Wedi Pratama', 'MEDIA PEMBELAJARAN INTERAKTIF FABRIKASI MANUAL PCB\r\nBERBASIS AUGMENTED REALITY\r\n', 'FITRI NOVA, M.T, S.ST', '1029058502', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(245, '1801091019', 'Johan', 'PERANCANGAN DAN PEMBUATAN SISTEM INFORMASI\r\nDATA SWAB COVID-19 BERBASIS WEB PADA\r\nLABORATORIUM PDRPI FAKULTAS KEDOKTERAN\r\nUNIVERSITAS ANDALAS', 'DEFNI, S.Si, M.Kom', '0007128104', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(246, '1801092026', ' Nur Azizah Rizkyah', 'PERANCANGAN DAN PEMBUATAN SISTEM INFORMASI INVENTARIS PADA YAYASAN IGASAR BERBASIS WEB', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(247, '1801081004', ' Lisna Sumarni', 'Rancang Bangun Sistem Monitoring Kandang Ayam Pedaging Berbasis IOT Dengan Menggunakan Notifikasi Telegram', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(248, '1801092015', 'Fadhila Suci Andini', 'SISTEM INFORMASI PENGELOLAAN WISUDA BERBASIS WEB PADA POLITEKNIK NEGERI PADANG', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(249, '1801082014', 'Verdian Ramdhani ', 'RANCANG BANGUN ALAT KEAMANAN PINTU \r\nMENGGUNAKAN E-KTP, MODUL RFID DAN AWS EC2 \r\nBERBASIS NODEMCU ESP8266', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(250, '1801081018', 'Annisa Septia Putri', 'Implementasi IOT pada monitoring kapasitas pengunjung perpustakaan dengan menggunakan SRF-04 di Politeknik negeri padang', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(251, '1801082021', 'Maitsa Nabila', 'Deteksi Wajah Bermasker di Perpustakaan Politeknik Negeri Padang Menggunakan Webcam dan AWS EC2 Berbasis Raspberry Pi', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(252, '1801081027', 'Meidiana Shafira', 'Pembuatan Application Laod balancing Meggunakan Algoritma Round Robin Dengan Stickiness Pada AWS\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(253, '1801082009', 'Indah Anggraini', 'Perancangan dan Pembuatan Application Load Balancing pada AWS Menggunakan Metode Least Connection', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(254, '1801081010', 'Mega Sari', 'PERANCANGAN DAN IMPLEMENTASI NETWORK MONITORING SYSTEM DAN DETEKSI KEAMANAN MENGGUNAKAN WAZUH', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(255, '1801081007', 'Anggun Melia', 'Penerapan Cloud Computing Menggunakan Aws Ec2 Pada Aplikasi Pengajuan Bantuan Sosial Nagari Desa Baru', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(256, '1801082010', ' Roby Isnil Juanda ', 'Membuat modul daring VR/AR', 'RONAL HADI, S.T, M.Kom', '0029017603', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(257, '1801082008', ' Muhammad Umar Huzein', 'PEMANFAATAN TEKNOLOGI VIRTUAL REALITY PADA \r\nMEDIA PEMBELAJARAN PROSES PEMASANGAN KABEL \r\nUTP CROSS DAN STRAIGHT\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(258, '1801081014', 'Yarmis Yuliana ', 'DETEKSI ANCAMAN KEAMANAN PADA SERVER DAN JARINGAN MENGGUNAKAN OSSEC', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(259, '1801082013', 'Adam Firmansyah', 'PEMANTAUAN KUALITAS UDARA LINGKUNGAN KANDANG SAPI BERBASIS IoT dan WEB\r\n', 'DEFNI, S.Si, M.Kom', '0007128104', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(260, '1801081023', 'Re Abdul Afif', 'IMPLEMENTASI PLATFORM IOT PADA ANDROID DEVICE MENGGUNAKAN WSO2 IOT SERVER BERBASIS LOCAL AREA NETWORK', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(261, '1801081009', 'Nalda Ayu Putri', 'RANCANG BANGUN APLIKASI E-ANTRIAN POLIKLINIK RUMAH SAKIT NAILI DBS BERBASIS CLOUD AMAZON WEB SERVICE ELASTIC COMPUTE CLOUD (AWS EC2)', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'FAZROL ROZI, M.Sc.', '0021078601'),
(262, '1801091024', ' Fasluki Perdana', 'PERANCANGAN DAN IMPLEMENTASI E-MENU DAMA CAFE BERBASIS WEB\r\n', 'MERI AZMI, S.T, M.Cs', '0029068102', 'FAZROL ROZI, M.Sc.', '0021078601'),
(263, '1801081022', 'Muhammad Dehan Pratama', 'IMPLEMENTASI WAZUH SEBAGAI LOG EVENT MANAGEMENT DAN DETEKSI CELAH KEAMANAN PADA SERVER DARI SERANGAN DOS', 'FITRI NOVA, M.T, S.ST', '1029058502', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(264, '1801081006', 'Reza Putri Julita', 'Perancangan Cloud Storage server menggunakan Owncloud berbasis ubuntu 20.04', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(265, '1801081003', 'Ananda Kurnia Putra', '	â€œRANCANG BANGUN SISTEM KEAMANAN KOTAK AMAL BERBASIS CLOUD COMPUTING', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(266, '1801092005', 'Nur Rahmad Ramadhan ', 'PERANCANGAN DAN IMPLEMENTASI APLIKASI RESERVASI DAN KEUANGAN BARBERSHOP MENGGUNAKAN PROGRESSIVE WEB APPS (PWA).', 'DEFNI, S.Si, M.Kom', '0007128104', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(267, '1801082017', 'Yusril Mahendra', 'MONITORING WINDOWS SERVER PADA AWS EC 2 MENGGUNAKAN NAGIOS DAN NSCLIENT DENGAN NOTIFIKASI MELALUI APLIKASI TELEGRAM', 'DEFNI, S.Si, M.Kom', '0007128104', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(268, '1801091033', ' Utari Rezky Alfany', 'RANCANG BANGUN SISTEM INFORMASI GEOGRAFIS LOKASI BENCANA ALAM KABUPATEN PADANG PARIAMAN BERBASIS WEB', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(269, '1801092030', ' Yola Yohana ', 'SISTEM INFORMASI PRAKTEK KERJA LAPANGAN DI BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA KOTA PADANG MENGGUNAKAN FRAMEWORK LARAVEL', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(270, '1801091029', ' Dini Syukrina Sabri ', 'Sistem Informasi Pengarsipan Surat keluar dan masuk untuk Jurusan Teknologi Informasi Politeknik Negeri padang', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(271, '1801091008', ' Zahratul Aini Akbar', 'SISTEM INFORMASI KOPERASI SYARIAH MAN INSAN CENDEKIA PADANG PARIAMAN BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL\r\n', 'RASYIDAH, S.Si, M.M.', '0001067407', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(272, '1701081006', 'afrizall03chan@gmail.com', 'APLIKASI MADING\r\nMENGGUNAKAN FLUTTER BERBASIS CLIENT SERVER DI \r\nPOLITEKNIK NEGERI PADANG', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(273, '1701091047', 'Nasri Sarif', 'SISTEM INFORMASI PROSES SIDANG TUGAS AKHIR JURUSAN TEKNOLOGI INFORMASI BERBASIS WEB', 'DEFNI, S.Si, M.Kom', '0007128104', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(274, '1801092018', 'Fadhilla Rahmanisa', 'Aplikasi Whistleblowing System Untuk Melaporkan\r\nPelanggaran Mahasiswa Di Politeknik Negeri Padang Berbasis Web\r\nDan Android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(275, '1701091050', 'Mursyidul Haq', 'PERANCANGAN DAN IMPLEMENTASI APLIKASI PEMESANAN TIKET PADA PT. AYAH IBU TRANPORT BERBASIS ANDROID \r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(276, '1701092026', 'Risya Dwi Aulia', 'SISTEM INFORMASI RANCANG BANGUN TICKET CENTER RESERVATION PADA PT. ANTAR LINTAS SUMATERA (ALS) PERWAKILAN PADANG BERBASIS WEB', 'DEFNI, S.Si, M.Kom', '0007128104', 'HUMAIRA, S.T, M.T', '0019038103'),
(277, '1801081019', 'Astina Wahyuni', 'PENERAPAN AMAZON WEB SERVICES EC2 (ELASTIC COMPUTE CLOUD) DAN RDS (DATABASE RELASIONAL SERVICE)  PADA SISTEM INFORMASI POSISI PETERNAKAN SAPI DI KOTA PADANG\r\n', 'RONAL HADI, S.T, M.Kom', '0029017603', 'HUMAIRA, S.T, M.T', '0019038103'),
(278, '1701092020', 'Qatrunnada Nurhana', 'Sistem Informasi Penelusuran Tugas Akhir Mahasiswa Politeknik Negeri Padang Berbasis WEB Dan Telegram Bot', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(279, '1801082023', 'Gilang Ramadani', 'IMPLEMENTASI CLOUD COMPUTING PADA SISTEM PENYIRAMAN TANAMAN TOMAT OTOMATIS PADA KEBUN TOMAT', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(280, '1801082018', 'Sadik Tulastu', 'IMPLEMENTASI CLOUD COMPUTING PADA SISTEM MONITORING SUHU KELEMBABAN RUMAH WALET', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(281, '1701082036', 'Adella', 'PEMBUATAN APLIKASI ANTRIAN BERBASIS ANDROID UNTUK KLINIK YANG MENERAPKAN SISTEM BPJS', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'HUMAIRA, S.T, M.T', '0019038103'),
(282, '1801081015', 'Muhammad Fandi Riadi', 'Implementasi Cloud Computing Pada Pemberian Pakan Ikan Otomatis Di Aquarium', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(283, '1701092017', 'Lisa Oktafiyani', 'Sistem informasi monitoring pemeliharaan app pelanggan besar di pt pln up3 solok', 'HUMAIRA, S.T, M.T', '0019038103', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(284, '1801081005', 'M. Rayhan', 'PEMANFAATAN TEKNOLOGI KOMPUTASI AWAN PADA SISTEM LAUNDRY BERBASIS IOT PADA ANGGA LAUNDRY', 'FITRI NOVA, M.T, S.ST', '1029058502', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(285, '1801082024', 'Fikri Rahmadani', 'Implementasi dan Monitoring Layanan Cloud Storage OwnCloud dengan Nagios menggunakan Notifikasi Telegram\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(286, '1701082033', '	Rafly Surya Chandra', 'Implementasi PWA (Progressive Web App) sebagai solusi untuk meningkatkan aplikasi website (jadwal kuliah) ', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(287, '1711082031', 'Ikhlas Zul Amal', 'GDSS UNTUK SELEKSI KELAYAKAN TOPIK PROYEK AKHIR MAHASISWA D4 -TRPL POLITEKNIK NEGERI PADANG MENGGUNAKAN METODE BORDA SERTA PERBANDINGAN METODE SIMPLE ADDITIVE WEIGHTING DAN WEIGHTED PRODUCT ', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(288, '1701091015', 'RAHMAT JUNEDI', 'SISTEM INFORMASI BIMBINGAN BELAJAR BERBASIS WEBSITE PADA BIMBEL CERIA KOTA PADANG', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(289, '1701081023', '	Dicky Rinaldi', 'Pemanfaatan AWS Server Untuk Deployment Sistem Ujian Online', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(290, '2011089007', 'Putri Huriati', 'IMPLEMENTASI METODE MOVING AVERAGE UNTUK PERAMALAN PERSEDIAAN BARANG PADA SISTEM INVENTORY CV.TRE JAYA PERKASA', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(291, '1801082006', 'Muhamad Farhan Salim', 'IMPLEMENTASI AWS CLOUD SERVER DALAM APLIKASI UJIAN ONLINE', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(292, '1801082025', 'Esi Tria Putri', 'IMPLEMENTASI MONITORING JARINGAN MENGGUNAKAN SERVER LIBRENMS DI VILLA RIZKI ILHAMI SAWANGAN DEPOK', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'FAZROL ROZI, M.Sc.', '0021078601'),
(293, '1711082042', 'Kurnia Fajar Viliano', 'APLIKASI PENGAMBILAN KEPUTUSAN MENGGUNAKAN ALGORITMA K- NEAREST NEIGHBOR DAN K- MEANS UNTUK KONSUMEN GAS ELPIJI DI KOTA PADANG BERBASIS WEB', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(294, '1801092016', 'Feby Rahmasari', 'SISTEM INFORMASI PENGGAJIAN DI PT PESONA MAJOLELO PROPERTY MENGGUNAKAN FRAMEWORK CODEIGNITER', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(295, '2011089011', 'Wara Ulan Saputri', 'SISTEM PAKAR DIAGNOSA PENYAKIT PADA HEWAN SAPI POTONG DENGAN MENGGUNAKAN METODE FORWARD CHAINING', 'DEFNI, S.Si, M.Kom', '0007128104', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(296, '2011089004', 'Frisdiandi Septiatama', 'SISTEM PENDUKUNG KEPUTUSAN PENERIMAAN BANTUAN SOSIAL PADA MASYARAKAT TERDAMPAK COVID 19 MENGGUNAKAN KOMBINASI METODE AHP DAN METODE TECHNIQUE FOR OTHERS REFRENCE BY SIMILARITY TO IDEAL SOLUTION (TOPSIS)', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(297, '1711082010', 'Reza Oksri Nengsi', 'APLIKASI MONITORING MOODSWING SELAMA MENSTRUASI BERBASIS ANDROID ', 'FAZROL ROZI, M.Sc.', '0021078601', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(298, '1801091004', ' Muhammad Fauzi', 'SISTEM INFORMASI KEPEGAWAIAN SD QUR\'AN USWATUN HASANAH PANDAI SIKEK BERBASIS WEB DENGAN FRAMEWORK CODEIGNETER', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(299, '2011089002', 'Afdal', 'RANCANG BAGUN ECOMMERCE MINANG PHOTOGRAPY DENGAN PEMANFAATAN METODE K NEAREST NEIGHBOR', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(300, '1711082013', 'Fikri Maulana', 'Perbandingan Arsitektur MVVM Dan MVP Pada Aplikasi Laboratorium Jurusan Teknologi Informasi Politeknik Negeri Padang', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(301, '1711082048', 'Elsa Oktavia', 'SISTEM PENDUKUNG KEPUTUSAN KENAIKAN JABATAN BAGI DOSEN DI POLITEKNIK NEGERI PADANG DENGAN MENGGUNAKAN METODE TECHNIQUE FOR OTHERS REFRENCE BY SIMILARITY TO IDEAL SOLUTION (TOPSIS)', 'HUMAIRA, S.T, M.T', '0019038103', 'DEFNI, S.Si, M.Kom', '0007128104'),
(302, '1801082015', 'Dicky Yuliardi', 'SISTEM KEAMANAN RUMAH MENGUNAKAN NODEMCU ESP-8266 DAN TELEGRAM BERBASIS IOT', 'DEFNI, S.Si, M.Kom', '0007128104', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(303, '1901081016', 'Aldi Saputra Tanjung', 'IMPLEMENTASI JUNIPER IP FABIRC NETWORK PADA DATA CENTER TELKOMSEL', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(304, '1901081023', 'Cindy Irawan Pratiwi', 'Rancang Bangun Sistem Pengontrol Lampu Rumah Jarak Jauh berbasis Internet of Things', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(305, '1901082024', 'Ahlanda Putra', 'ANALISIS KEAMANAN DAN MEKANISME PENANGANAN APLIKASI WEB TERHADAP SERANGAN SQL INJECTION', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(306, '1901081027', 'Latifah Afra', 'IMPLEMENTASI AWS EC2 PADA PROTOTYPE LAMPU LALU LINTAS RAMAH LANSIA BERBASIS MIKROKONTROLER MENGGUNAKAN RFID\r\n', 'FITRI NOVA, M.T, S.ST', '1029058502', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(307, '1901081011', 'Vini Jumatul Fitri', 'Backend Engineering Bootcamp(Project MSIB)\r\n', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(308, '1801082003', 'Dwi Latiffah Hanum', 'TEMPAT SAMPAH PINTAR BERBASIS IOT', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'DEFNI, S.Si, M.Kom', '0007128104'),
(309, '1901081020', 'Dodi Saputra', 'ANALISIS PENANGANAN TEKNIK SERANGAN CROSSITE SCRIPTING (XSS ATTACK) PADA APLIKASI BERBASIS WEB', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(310, '1901082001', 'Zigo Stephano', 'Implementasi cloud computing menggunakan aws pada aplikasi pemesanan tiket wisata', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(311, '1901082014', 'M. Wahyu Agustino', 'Project msib (Kampus Merdeka)', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(312, '1901081009', 'Dani Ahnaf Falih', 'Project MSIB (Kampus Merdeka) ', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(313, '1901082002', 'Khasbiy Rifqi', 'PROJECT MSIB (KAMPUS MERDEKA)', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(314, '1901081007', 'Husnul Fikri', 'Project Kampus Merdeka (MSIB)', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FAZROL ROZI, M.Sc.', '0021078601'),
(315, '1901082027', 'Arin Cantika Musi', 'RANCANG BANGUN APLIKASI PELATIHAN VOLUNTEEREDU PADA KOMPONEN BACK-END DENGAN BAHASA PEMROGRAMAN GOLANG', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(316, '1901081019', 'Yandre May Iklas', 'RANCANGAN DAN IMPLEMENTASI JARINGAN INTERNET DI JURUSAN ELEKTRO FAKULTAS TEKNIK UNIVERSITAS ANDALAS', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(317, '1901081022', 'Annisa Dwi Febryanti', 'Penerapan Cloud Computing Menggunakan AWS EC2 Pada Alat Pendeteksi dan Pengamanan Kebocoran Gas LPG Berbasis Mikrokontroler', 'FITRI NOVA, M.T, S.ST', '1029058502', 'FAZROL ROZI, M.Sc.', '0021078601'),
(318, '1901082029', 'Desi Rahmayuni', 'Sistem monitoring kualitas udara kota padang panjang', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(319, '1901082008', 'Ossy Mayra Dwitami', 'SISTEM PENYIRAMAN OTOMATIS MENGGUNAKAN WEB TERHADAP TUMBUHAN STRAWBERRY BERBASIS IOT', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(320, '1901081008', 'Rizki Anugrah Vidian', 'IMPLEMENTASI CLOUD COMPUTING SEBAGAI LAYANAN INFRASTRUCTURE AS A SERVICE (IASS) MENGGUNAKAN OPENSTACK', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'HUMAIRA, S.T, M.T', '0019038103'),
(321, '1901081010', 'Rivola Islami', 'PERANCANGAN DAN IMPLEMENTASI SECURITY ONION SEBAGAI SISTEM MONITORING DAN KEAMANAN PADA SERVER', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(322, '1901082005', 'Esa Pramedia', 'IMPLEMENTASI TEKNOLOGI CLOUD COMPUTING UNTUK E-LEARNING BERBASIS WEBSITE', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(323, '1901082016', 'M. Reza Gevan Lolyvich', 'SISTEM MANAJEMEN KEAMANAN RUANGAN DENGAN FINGERPRINT DAN SENSOR SUHU', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(324, '1901081024', 'Melia Putri', 'PENERAPAN JARINGAN SENSOR NIRKABEL PADA SISTEM MONITORING KANDANG SAPI', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(325, '1901081005', 'Indra Darmawan', 'PERBANDINGAN PREDIKSI HARGA RUMAH MENGGUNAKAN METODE LINEAR REGRESSION DENGAN RANDOM FOREST', 'FITRI NOVA, M.T, S.ST', '1029058502', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(326, '1901081021', 'Ryansyah Putra', 'Pengembangan dan Implementasi cloud computing menggunakan docker pada aplikasi donor darah berbasis android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(327, '1901082026', 'Muhamad Al Hafizh', 'IMPLEMENTASI CLOUD STORAGE MENGGUNAKAN NEXTCLOUD PADA AMAZON WEB SERVICE', 'RONAL HADI, S.T, M.Kom', '0029017603', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(328, '1901081014', 'Lusi Dwi Tri Wahyuni', 'SISTEM MONITORING SUHU TUBUH DAN DETAK JANTUNG PADA SAPI DENGAN MENGGUNAKAN ESP8266    ', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FAZROL ROZI, M.Sc.', '0021078601'),
(329, '1901082004', 'Muhammad Afdal Indrawan', 'Perancangan Dan Implementasi Program Penghitung Barang Menggunakan Metode Image Processing Di Jurusan TI Politeknik Negeri Padang', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(330, '1901081004', 'Niamatut Thoharia', 'MEMBANGUN SERVER INSTANT MESSAGING MENGGUNAKAN OPENFIRE DI DINAS KOMUNIKASI DAN INFORMATIKA KOTA SOLOK', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(331, '1901082010', 'Ridho Farras Muthi Amta', 'IMPLEMENTASI CLOUD COMPUTING DENGAN MENGGUNAKAN DOCKER PADA APLIKASI E-COMMERCE DISTRO DI PADANG PARIAMAN', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(332, '1901081017', 'Laras Santi', 'IMPLEMENTASI INFRASTRUKTUR AWS EC2 PADA ALAT MONITORING KERUSAKAN MESIN SEPEDA MOTOR BERDASARKAN LEVEL GETARAN DAN SUHU', 'FAZROL ROZI, M.Sc.', '0021078601', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(333, '1901082018', 'Puput Pujiati', 'Perancangan Dan Implementasi Menejemen Jaringan Komputer Menggunakan Queue Tree Dengan Metode Pcq (Peer Connection Queue)', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(334, '1901081025', 'Rini Wahyuni', 'PERANCANGAN SISTEM KEAMANAN JARINGAN BERBASIS FIREWALL DAN IDS MENGGUNAKAN PFSENSE', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(335, '1901081015', 'Wahyuna', 'Implementasi sistem keamanan dan high availability di AWS pada website SMKN 5 Padang', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(336, '1901081028', 'Sirajul Afkar', 'PERANCANGAN APLIKASI FURNITUREALITY SEBAGAI MEDIA PROMOSI BERBASIS AUGMENTED REALITY PADA UMKM UD. BUNGO RAJO', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', 'FAZROL ROZI, M.Sc.', '0021078601'),
(337, '1901093018', 'Ayyubi Fauzihan Jefry', 'Sistem Informasi Toko Online Pada Brand Brand Qadina.id berbasis Web Menggunakan Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(338, '1901093014', 'Ghina Lianti Sastri', 'Sistem Informasi Koperasi Simpan Pinjam Makmur Kelurahan Ngalau menggunakan Framework Laravel', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FAZROL ROZI, M.Sc.', '0021078601'),
(339, '1901092021', 'Shalsabilla Elga Andini', 'Sistem Informasi Perpustakaan berbasis Progressive Web Apps pada SMAN 3 Padang menggunakan Framework Laravel', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(340, '1901092001', 'Valery Raesya', 'Aplikasi Antrian Online Realtime pada Puskesmas Tanjung Pati Berbasis Android', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(341, '1811082008', 'Salsabila Delaisya Permana', 'SISTEM PENDUKUNG KEPUTUSAN PENERIMAAN BANTUAN SOSIAL  PROGRAM KELUARGA HARAPAN MENGGUNAKAN METODE MULTY ATTRIBUTE UTILITY THEORY (STUDI KASUS : KELURAHAN KOTO TANGAH BATU AMPA)', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(342, '1901092028', 'Citra Ferlli', 'Sistem Informasi Manajemen dan Pelayanan Masyarakat Desa Jati Mudik Berbasis PWA Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(343, '1901091002', 'Iksan Nursalim', 'RANCANG BANGUN BACKEND APLIKASI FORUM CAMP MENGGUNAKAN GO, SQLITE, DAN JWT', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(344, '1901082020', 'Muhammad Fajri Husaini', 'PENGEMBANG MULTI-PLATFORM DAN BACK-END PADA APLIKASI MAKE OWN WORKOUT (MOW) ', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(345, '1901082030', 'Daffa Julistio', 'PEMBUATAN REST API PADA WEBSITE LEARNING MANAGEMENT SYSTEM MENGGUNAKAN MICRO FRAMEWORK LUMEN', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(346, '1901092004', 'Fahri Fadhila', 'Sistem Informasi Akademik Berbasis Web di SMK An Nur Padang Menggunakan  Framework laravel', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(347, '1901082003', 'Ahmad Siddiq', 'PENGEMBANG APLIKASI MULTI-PLATFORM DAN BACKâ€“END PADA APLIKASI REVIEW MOVIE (REMOVE)\r\n', 'FITRI NOVA, M.T, S.ST', '1029058502', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(348, '1901092006', 'Rahmi Zazkia', 'Aplikasi pemetaan geografi fasilitas publik di kota padang panjang berbasis android', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(349, '1811081001', 'Nuria Sisma Putri', 'GROUP DECISION SUPPORT SYSTEM UNTUK MENENTUKAN KELAYAKAN PENERIMA BANTUAN SOSIAL DI KOTA PADANG DENGAN METODE AHP(ANALYTICAL HIERARCHY PROCESS) DAN BORDA', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(350, '1901091010', 'Nurul Salsabila Yasfa', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PENGADAAN PERALATAN DAN PERLENGKAPAN JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG BERBASIS WEB', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(351, '1711082056', 'Farhan Yofanka', 'Sistem pendukung keputusan penerimaan karyawan baru menggunakan metode MFEP', 'DEFNI, S.Si, M.Kom', '0007128104', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(352, '1901081001', 'Kournia Swastika', 'PEMBUATAN APLIKASI PEMESANAN MAKANAN PADA BARAK AMAK POLITEKNIK NEGERI PADANG BERBASIS ANDROID', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(353, '1811082002', 'Afza Sorfina', 'IMPLEMENTASI ALGORITMA HAVERSINE PADA SISTEM PRESENSI DI SMA NEGERI 4 KOTA SUNGAI PENUH', 'DEFNI, S.Si, M.Kom', '0007128104', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(354, '1811081009', 'I.s. Mutia', 'PERBANDINGAN METODE LEAST SQUARE DAN METODE DOUBLE MOVING AVERAGE UNTUK PERAMALAN PERSEDIAAN BARANG DI TOKO KOSMETIK LIZA', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(355, '1811082015', 'Nola Nur Azizah', 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN RUMAH TANGGA MISKIN DI NAGARI KOTO BARU SIMALANGGANG MENGGUNAKAN METODE TOPSIS\r\n', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(356, '1901091021', 'Elvina Desmendra', 'RANCANG BANGUN SISTEM INFORMASI MANAJEMEN  DI RUMAH  TALAMAU TAHFIDZ  CENTER  MENGGUNAKAN FRAMEWORK LARAVEL\r\n', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(357, '1901093017', 'Muhammad Fikri Afansyah', 'LAPORAN AKHIR STUDI INDEPENDEN BERSERTIFIKAT AI Mastery Program Di Orbit Future Academy SISTEM REKOMENDASI RESEP MASAKAN BERDASARKAN BAHAN MENGGUNAKAN CONTENT BASED FILTERING', 'HUMAIRA, S.T, M.T', '0019038103', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(358, '1811081023', 'Jundullah Ilhaq Aulia', 'PEMBUATAN APLIKASI MANAJEMEN LOGISTIK UNTUK PENDAKI BERBASIS IOS MENGGUNAKAN FRAMEWORK SWIFTUI DI APPLE DEVELOPER ACADEMY@INFINITE LEARNING, BATAM', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(359, '1901082006', 'Silmi Salsabilla', 'KEAMANAN JARINGAN MENGGUNAKAN PFSENSE SEBAGAI FIREWALL UNTUK INSTRUKSI DETEKSI PREVENSI SISTEM (IDPS) MENGGUNAKAN SNORT', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(360, '1901093042', 'Yusuf Baihaqi Amanda', 'LAPORAN TENGAH/AKHIR MAGANG & STUDI INDEPENDEN BERSERTIFIKAT UI/UX DESIGNER PADA BIDANG FINTECH DI BINAR ACADEMY\r\n', 'RONAL HADI, S.T, M.Kom', '0029017603', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(361, '1701082038', 'Hafriyaldo Syafril', 'PERANCANGAN APLIKASI LAUNDRY BERBASIS WEB DENGAN FRAMEWORK CODEIGNITER ', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FAZROL ROZI, M.Sc.', '0021078601'),
(362, '1901092002', 'Wahyu Khairat', 'APLIKASI BOTAK (BUILD ONLINE TECHNOLOGY ABOUT KNOWLEDGE) PERSONAL ASSISTANT', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(363, '1901092019', 'Muhammad Abdillah Dzikri', ' pembuatan aplikasi secondhand berbasis mobile dengan tema e-commerce menggunakan framework react native', 'MERI AZMI, S.T, M.Cs', '0029068102', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(364, '1901091013', 'Rizki Pratama Adryan', 'STUDI INDEPENDEN PERANCANGAN APLIKASI GYM MEMBERSHIP SYSTEM SPORTLY  DI ALTERRA ACADEMY\r\n', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(365, '1811081014', 'Tulsi Yasmi', 'IMPLEMENTASI METODE LEAST SQUARE UNTUK PERAMALAN PERSEDIAAN BARANG PADA SISTEM INVENTORI CV.TRE JAYA PERKASA ', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(366, '1901092023', 'Afif Fujia Rahman', 'Aplikasi Jual Beli Barang Bekas secara Online (Second Hand) menggunakan Android Studio', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(367, '1901092025', 'Yoga Kurniawan Putra', 'Perancangan Aplikasi Pemesanan Jasa Tukang Bangunan Terdekat Berbasis Android', 'RASYIDAH, S.Si, M.M.', '0001067407', 'HUMAIRA, S.T, M.T', '0019038103'),
(368, '1901093003', 'Hafis Hidayatullah', 'RANCANG BANGUN SISTEM INFORMASI SURAT PERINTAH PERJALANAN DINAS PADA KANTOR WALI NAGARI TALANG BABUNGO BERBASIS WEBSITE MENGGUNAKAN CODEIGNITER ', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(369, '1901093005', 'Silvia Farina', 'SISTEM INFORMASI RENTAL MOBIL DHANIL  PADANG \r\nPANJANG BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK \r\nLARAVEL', 'RASYIDAH, S.Si, M.M.', '0001067407', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(370, '1901093022', 'Aura Syifa Listi', 'Studi Independen Bersertifikat Web Development di PT. Zona Edukasi Nusantara', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(371, '1901092026', 'Atika Indah Sari', 'Membangun API Website SecondHand Pada Sisi BackEnd Menggunakan Express JS', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(372, '1901091001', 'Rizkiah Rahmah Hatta', 'MEMBANGUN FRONTEND APLIKASI SECONDHAND DENGAN FRAMEWORK NEXT.JS DI PT LENTERA BANGSA BENDERANG', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(373, '1901093039', 'Noviana', 'â€œSISTEM INFORMASI KEUANGAN PADA MASJID BAITUL AGUNG BERBASIS WEB FRAMEWORK LARAVELâ€™â€™', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(374, '1811082019', 'Indah Wahyuandillah', 'Implementasi Metode Forward Chaining untuk Mendiagnosa Gangguan Autis pada Anak Berbasis Web', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEFNI, S.Si, M.Kom', '0007128104'),
(375, '1901093021', 'Nois Arya Chaerunianisa', 'Sistem Manajemen Pemesanan Kacamata Pada Toko Retina Optical Berbasis Web ', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(376, '1811081035', 'Rozliyana Binti Latola', 'IMPLEMENTASI ALGORITMA NAÃVE BAYES UNTUK \r\nPREDIKSI TINGKAT KEDISIPLINAN SISWA \r\n (STUDI KASUS : SMAN 5 SIJUNJUNG)', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(377, '1811081030', 'Zukron Alviandy Rahmadhan', 'Sistem Pengecekan Kemiripan Tugas Akhir Mahasiswa Menggunakan Algoritma Rabin-Karp dan Jaro-Winkler', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'FAZROL ROZI, M.Sc.', '0021078601'),
(378, '1811081034', 'Farhan Rinsky Mulya', 'SISTEM PENDUKUNG KEPUTUSAN KELOMPOK UNTUK PENENTUAN PENJUALAN PRODUK RITEL BERBASIS WEB (STUDI KASUS: DATUL MART)', 'MERI AZMI, S.T, M.Cs', '0029068102', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(379, '1811081018', 'Muhammad Beni Fajri', 'Klastering Dampak Penggunaan Smartphone Terhadap \r\nKetajaman Mata Siswa SMA Di Kota Padang Menggunakan \r\nMetode K-Means', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEFNI, S.Si, M.Kom', '0007128104'),
(380, '1901093016', 'Hafizah Nurul Salsabila', 'Perancangan dan Implementasi E-Commerce Pada Toko Kue Uthie Bakery  Berbesis Website Menggunakan Laravel', 'HUMAIRA, S.T, M.T', '0019038103', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(381, '1901093009', 'Rahmialis Yakub', 'SISTEM INFORMASI E-COMMERCE BUKET BUNGA PADA TOKO ARV.FLO BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(382, '1901092007', 'Citra Alfianti Putri', 'Sistem Informasi Kepegawaian Di SMA Negeri 1 Ranah Pesisir Berbasis Web Menggunakan Framework Laravel', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(383, '1811082007', 'Hanif Aulia Sabri', 'CLUSTERING DATA EVALUASI STANDAR SISTEM PENJAMIN MUTU INTERNAL (STUDI KASUS: JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG)\r\n', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'FAZROL ROZI, M.Sc.', '0021078601'),
(384, '1901092005', 'Dewi Purnama', 'IMPLEMENTASI PAYMENT GATEWAY DAN TRACKING ONGKIR DENGAN API RAJAONGKIR PADA APLIKASI E-COMMERCE SARIANGGREK MENGGUNAKAN FRAMEWORK LARAVEL', 'DEFNI, S.Si, M.Kom', '0007128104', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(385, '1901093030', 'Arief Rachman Putra', 'LAPORAN AKHIR STUDI INDEPENDENT BERSERTIFIKAT Web Development Di PT. Zona Edukasi Nusantara (Zenius)', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(386, '1901093019', 'Nabila Ridwan', 'RANCANG BANGUN E-COMMERCE PADA TOKO PERHIASAN LOVEGELL MENGGUNAKAN FRAMEWORK LARAVEL\r\n', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(387, '1901092018', 'Fattaliya Zikra', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PERPUSTAKAAN  DI SMK NEGERI 1 BATIPUH BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL\r\n\r\n', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(388, '1811081013', 'Vira Mistika', 'Implementasi Metode AHP dan TOPSIS dalam Menentukan Penerima Bantuan Program Keluarga Harapan (PKH) di Nagari Koto Kaciak Kabupaten  Pasaman ', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(389, '1811081022', 'Richy Azura', 'ANALISIS ASPEK KUALITAS FUNCTIONAL SUITABILITY DAN MAINTAINABILITY DALAM PEMELIHARAAN SISTEM INFORMASI PENGELOLAAN PROGRAM TAHFIZH HARIAN (STUDI KASUS RUMAH TAHFIDZ AHLUL QURAN)\r\n', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(390, '1901091017', 'Trisa Sarifatul Anisak', 'PEMBANGUNAN SISTEM INFORMASI BERBASIS E-COMMERCE PADA TOKO IDH.CAHAYA DENGAN TERINTEGRASI PAYMENT GATEWAY, RAJA ONGKIR, DAN CEK RESI MENGGUNAKAN FRAMERWORK LARAVEL', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(391, '1901091012', 'Jesi Andria Joni', 'SISTEM LAYANAN BANTUAN DI PT. MARAWA TRANSMISI MEDIA BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK LARAVEL', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(392, '1811082017', 'Rafiq Mulia Putra', 'SISTEM PENDUKUNG KEPUTUSAN BERKELOMPOK DENGAN MENERAPKAN METODE AHP, ARAS DAN BORDA UNTUK PEMILIHAN PONDOK PESANTREN TINGKAT MADRASAH ALIYAH DI KOTA PADANG', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(393, '1811081002', 'Dika Andra Joni', 'ANALISIS SISTEM MANAJEMEN DOKUMEN MENGGUNAKAN PENDEKATAN BUSINESS PROCESS MODEL AND NOTATION (BPMN) (Studi Kasus: Dokumen Proyek Akhir Jurusan Teknologi Informasi Politeknik Negeri Padang)\r\n', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(394, '1811082027', 'Salman Alfarissy', 'KLASIFIKASI KELUARGA SEJAHTERA MENGGUNAKAN METODE NAIVE BAYES\r\n', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(395, '1811082013', 'Nadilla C. Putri', 'Implementasi Machine Learning  Untuk Prediksi Ketercapaian Hafalan Santri Menggunakan Algoritma Decision Tree (Studi Kasus : Rumah Tahfizh Ahlul Qurâ€™an)', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'HUMAIRA, S.T, M.T', '0019038103'),
(396, '1901091003', 'Dea Syafira', 'SISTEM INFORMASI KEPENDUDUKAN DAN PELAYANAN SURAT-MENYURAT DI NAGARI SAOK LAWEH MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(397, '1901091024', 'Indah Kusuma Ningsih', 'SISTEM INFORMASI UJI KOMPETENSI PADA LEMBAGA SERTIFIKASI PROFESI (LSP) DI SMKN 1 TANJUNG RAYA MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(398, '1901091027', 'Riky', 'SISTEM INFORMASI PERPUSTAKAAN DI JURUSAN TEKNOLOGI INFORMATIKA DI POLITEKNIK NEGERI PADANG', 'MERI AZMI, S.T, M.Cs', '0029068102', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(399, '1901091004', 'Sandri B', 'RANCANG BANGUN E-COMMERCE PEMESANAN JASA SERVICE DAN PENJUALAN SPAREPART KOMPUTER MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(400, '1901091020', 'Sherina Tari Yolanda', 'SISTEM INFORMASI PENGARSIPAN DAN PENGELOLAAN SURAT PADA KENAGARIAN CAMPAGO BARAT BERBASIS WEB DENGAN NOTIFIKASI VIA WHATSAPP  MENGGUNAKAN FRAMEWORK LARAVEL', 'HUMAIRA, S.T, M.T', '0019038103', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(401, '1901091018', 'Rafli Jefa Putra', 'RANCANG BANGUN SISTEM INFORMASI PRAKTEK KERJA LAPANGAN DI SMK N 1 BUKITTINGGI MENGGUNAKAN FRAMEWORK LARAVEL', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(402, '1901093008', 'Putri Ramadhan', 'SISTEM INFORMASI PEMESANAN TIKET MASUK DAN PENGINAPAN MIFAN WATER PARK MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(403, '1901093007', 'Rita Oktaviani', 'RANCANG BANGUN SISTEM INFORMASI REKAM MEDIS\r\nKESEHATAN IBU DAN ANAK MENGGUNAKAN\r\nFRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'FAZROL ROZI, M.Sc.', '0021078601'),
(404, '1901093033', 'Tri Veramita', 'SISTEM INFORMASI LAYANAN PENGADUAN\r\n MASYARAKAT  KELURAHAN GANTING \r\nBERBASIS WEB (LARAVEL)\r\n', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(405, '1711082040', 'Judang Rizki Muhammad', 'Penerapan Metode Design Thinking Pada Sistem Aplikasi Berbasis Website (Studi kasus: Padang.go.id)', 'DEFNI, S.Si, M.Kom', '0007128104', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(406, '1901092030', 'Rifat Alifa', 'RANCANG BANGUN SISTEM INFORMASI POINT OF SALES\r\nBERBASIS WEB PADA TOKO TAUFIK KECAMATAN ABTB\r\nKOTA BUKITTINGGI\r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(407, '1811082004', 'M Irsad Alfajri', 'PENGUKURAN KEBERKESANAN PEMBELAJARAN APLIKASI BELAJAR PENGUCAPAN BAHASA INGGRIS MENGGUNAKAN PAIRED SAMPLE T-TEST ', 'FAZROL ROZI, M.Sc.', '0021078601', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(408, '1811082009', 'Ramanda Syahputra', 'KLASTERING DAMPAK PENGGUNAAN SMARTPHONE PADA TELINGA SISWA SMA DI KOTA PADANG MENGGUNAKAN METODE K-MEDOIDS', 'DEFNI, S.Si, M.Kom', '0007128104', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(409, '1811082005', 'Ahmad Arif', 'IMPLEMENTASI ALGORITMA BOYER MOORE PADA SISTEM INFORMASI ADMINISTRASI TATA USAHA (STUDI KASUS : SMA NEGERI 1 KEC. GUGUAK)', 'DEFNI, S.Si, M.Kom', '0007128104', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(410, '1901093011', 'Aulia Permana', 'SISTEM INFORMASI PEMBINAAN DAN PRESTASI OLAHRAGA LEMPAR PISAU DAN KAPAK SUMATERA BARAT MENGGUNAKAN LARAVEL', 'FAZROL ROZI, M.Sc.', '0021078601', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(411, '1711082001', 'Alif Gilang Mulia', 'PERANCANGAN DESIGN UI/UX UNTUK PORTAL PERUSAHAAN PT. ARWYNDO JAYA CEMERLANG MENGGUNAKAN METODE DESIGN THINKING', 'DEFNI, S.Si, M.Kom', '0007128104', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(412, '1901092008', 'Fadhillah Putri Fatria', 'RANCANG BANGUN APLIKASI E-COMMERCE BENGKEL\r\nBERBASIS WEB\r\n(STUDI KASUS SHERPA KONTRUKSI)\r\n\r\n', 'Fanni Sukma, S.ST., M.T', '0006069009', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(413, '1711082015', 'Maulana Mahardika', 'Pemilihan Hero META Pada Pengaplikasian Strategi DoTA 2  Menggunakan Metode SAW', 'DEFNI, S.Si, M.Kom', '0007128104', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(414, '1901091026', 'Ridda Witdianti', 'RANCANG BANGUN SISTEM INFORMASI PET SHOP MENGGUNAKAN FRAMEWORK LARAVEL', 'DEFNI, S.Si, M.Kom', '0007128104', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(415, '1901092010', 'Rahayu Indah Abadi', 'Sistem Informasi Rawat Jalan Puskesmas Belimbing Berbasis Web Menggunakan Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(416, '1901092011', 'Firman Shiddiq Alamsyah', 'PERANCANGAN SISTEM INFORMASI AKADEMIK \r\nDI SMA ADABIAH PADANG \r\nBERBASIS PROGRESSIVE WEB APPS MENGGUNAKANFRAMEWORK LARAVEL\r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(417, '1811082001', 'Faza Qonita Auliya', 'PENERAPAN METODE LEAN UX DALAM PERANCANGAN UI/UX PADA WEBSITE SMP BAITURROSYID BOARDING SCHOOL PADANG', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(418, '1811081003', 'Deni Al Farizi', 'IDENTIFIKASI ANOMALI PENGGUNAAN AIR DI PERUMDAM TIRTA GEMILANG PASAMAN BARAT MENGGUNAKAN METODE MEDIAN ABSOLUTE DEVIATION (MAD)', 'FAZROL ROZI, M.Sc.', '0021078601', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(419, '1901091011', 'Agil Kurniawan', 'Rancang Bangun Sistem Informasi Inventori Barang di PT. Hana Cahaya Bersama Berbasis WEB Menggunakan Framework Laravel', 'RONAL HADI, S.T, M.Kom', '0029017603', 'DEFNI, S.Si, M.Kom', '0007128104'),
(420, '1901091006', 'Mifthah Aulianti', 'Sistem Informasi pada Rental Mobil Teresha Menggunakan Framework Codeigniter', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(421, '1811081029', 'Harfa Thandila', 'PERBANDINGAN METODE AHP DAN AHP-TOPSIS\r\nDALAM PROSES PENGAMBILAN KEPUTUSAN PEMILIHAN BANTUAN SISWA KURANG MAMPU DI \r\nSMA NEGERI 1 TANJUNG MUTIARA\r\n', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(422, '1901093025', 'Muhammad Irsyad', 'Sistem Informasi Inventory Mitra Usaha Tani', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(423, '1811081012', 'Lannia Prissila Ayu', 'SISTEM PENDUKUNG KEPUTUSAN\r\nPENILAIAN PEGAWAI MENGGUNAKAN METODE MAUT\r\n(Multi Attribute Utility Theory)\r\n(Studi Kasus : Diskominfotik Sumbar)\r\n', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(424, '1901093031', 'Arinanda Satrya Hakim', 'Sistem Informasi Konsultasi Online Dosen dan Mahasiswa berbasis Web dengan Framework Laravel', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(425, '1901093015', 'Friska Wulandari', 'Sistem Informasi Wedding Organizer Pada Tiara Wedding Di Kota Padang Panjang Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(426, '1901093029', 'Fachrureza Yubesta', 'Sistem Informasi Akademik Pada SMAN 3 Padang Panjang Menggunakan Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(427, '1901092009', 'Jihan Zakia Firdaus', 'SISTEM INFORMASI RESERVASI STAND PAMERAN ISFBE 2022 PT PANDAWA MEDIA INOVASI BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL\r\n', 'MERI AZMI, S.T, M.Cs', '0029068102', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(428, '1901092020', 'Yulya Marda Ningsih', 'Rancang Bangun Aplikasi Pemesanan Pelaminan Berbasis Android', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HUMAIRA, S.T, M.T', '0019038103'),
(429, '1901091008', 'Welsi', 'SISTEM INFORMASI PENJUALAN DAN PEMBELIAN BARANG BEKAS KEBUTUHAN MAHASISWA PADANG MENGGUNAKAN FRAMEWORK YII', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(430, '1901093010', 'Arrafi Herosya Putra', 'SISTEM INFORMASI PENJUALAN TOKO HEROSYASPORT BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK LARAVEL', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(431, '1901092029', 'Novri Hidayat Sabri', 'MEMBANGUN SITUS E-COMMERCE PENJUALAN PRODUK \r\nPERCETAKAN MENGGUNAKAN LARAVEL BERBASIS \r\nWEBSITE', 'RASYIDAH, S.Si, M.M.', '0001067407', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(432, '1901092016', 'Eddo Yulianda', 'APLIKASI PRESENSI ONLINE BERBASIS LOKASI UNTUK DOSEN JURUSAN TEKNOLOGI INFORMASI PNP', 'MERI AZMI, S.T, M.Cs', '0029068102', 'HUMAIRA, S.T, M.T', '0019038103'),
(433, '1901092013', 'Mona Monika Veza', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PENGGAJIAN BERBASIS WEB PADA BIRO PENGADAAN BARANG DAN JASA', 'DEFNI, S.Si, M.Kom', '0007128104', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(434, '1901093037', 'M. Dean Abdillah', 'SISTEM INFORMASI PENJUALAN ONLINE SUSU SAPI MURNI HASIL PETERNAKAN SERAMBI MEKAH FRESH MILK KOTA PADANG PANJANG MENGGUNAKAN LARAVEL\r\n', 'DEFNI, S.Si, M.Kom', '0007128104', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(435, '1711082009', 'Teuku Excel Zasa Desriandi', 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN PEMBIMBING PROYEK AKHIR DENGAN MENGGUNAKAN METODE COSINE', 'DEFNI, S.Si, M.Kom', '0007128104', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(436, '1811082003', 'Rayhan Putra', 'Sistem Pendukung Keputusan Pemilihan Mobil Bekas Secara Dinamis Menggunakan Metode Topsis', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(437, '1901092024', 'Imam Muhammad Rafifi', 'RANCANG BANGUN E COMMERCE TOKO KUE MENGGUNAKAN FRAMEWORK LARAVEL', 'RASYIDAH, S.Si, M.M.', '0001067407', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(438, '1901093006', 'Miftachul Khairiyah', 'Sistem Informasi Inventory Obat di Apotek Multazam Berbasis Progressive Web Apps Menggunakan Framework Laravel', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802');
INSERT INTO `proposal_ta` (`id_proposal_ta`, `nim`, `nama`, `judul`, `pembimbing_satu_nama`, `pembimbing_satu_nidn`, `pembimbing_dua_nama`, `pembimbing_dua_nidn`) VALUES
(439, '1901091014', 'Juma Helda', 'PERANCANGAN SISTEM INFORMASI ALUMNI SMK NEGERI 2 PADANG PANJANG BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(440, '1901091016', 'Nur Azizah', 'PERANCANGAN SISTEM INFORMASI BIMBINGAN PENASEHAT AKADEMIK \r\nJURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG\r\nMENGGUNAKAN FRAMEWORK CODEIGNITER\r\n', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(441, '1701081041', 'Deby Hibatul Fadillah', 'IMPLEMENTASI WEB SERVICE PADA APLIKASI PENJUALAN PLAFON BERBASIS ANDROID DI KABUPATEN TANAH DATAR', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(442, '1901093041', 'Sarah Fitri Khairatunnisa A', 'SISTEM INFORMASI MANAJEMEN RAPAT BERBASIS WEB PT PLN (PERSERO) UNIT PELAKSANA PEMBANGKITAN TELUK SIRIH', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(443, '1901092017', 'Fadhil Defithra', 'Sistem Informasi Praktek Kerja Lapangan Di Jurusan Teknologi Informasi Politeknik Negeri Padang Berbasis WEB Framework Laravel', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(444, '1811081006', 'Novita Aulia', 'IMPLEMENTASI UI/UX PADA WEBSITE PROMOSI GULA MERAH MENGGUNAKAN METODE DESIGN THINKING', 'HUMAIRA, S.T, M.T', '0019038103', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(445, '1811081004', 'Randi', 'Klasifikasi Kematangan Buah Klimaterik', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'HUMAIRA, S.T, M.T', '0019038103'),
(446, '1901093036', 'Maysitah Khairunnisa', 'RANCANG BANGUN E-COMMERCE PRODUK UMKM PADANG PANJANG MENGGUNAKAN FRAMEWORK LARAVEL', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(447, '1901093035', 'Muhammad Ravi Akbar', 'SISTEM INFORMASI AKADEMIK SMK NEGERI 2  PADANG PANJANG  BERBASIS WEB MENGGUNAKAN \r\nFRAMEWORK LARAVEL\r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(448, '1901091025', 'Nurul Kirana Marta', 'SISTEM INFORMASI PELAYANAN KESEHATAN PADA BIDAN YOSI MARLINA BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'HUMAIRA, S.T, M.T', '0019038103', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(449, '1811081032', 'Farihah Salsabila', 'IMPLEMENTASI METODE HAVERSINE FORMULA UNTUK ANTRIAN PASIEN PADA RSK BEDAH ROPANASURI BERBASIS ANDROID', 'RONAL HADI, S.T, M.Kom', '0029017603', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(450, '1901082007', 'Muhammad Iqbal', 'Pembuatan Aplikasi Pencarian Indekos Berbasis Android di Pasar Baru, Kota Padang', 'RONAL HADI, S.T, M.Kom', '0029017603', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(451, '1901091023', 'Helzi Rahmalya', 'SISTEM INFORMASI PENJUALAN PADA TOKO GERAI SUNNI JAKARTA PUSAT DENGAN MENGGUNAKAN FRAMEWORK YII', 'DEFNI, S.Si, M.Kom', '0007128104', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(452, '1901093034', 'Afdhaluz Zikri Syamra', 'Sistem Informasi Manajemen dan Layanan di Islamic Centre Padang Panjang Menggunakan Framework Laravel', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(453, '1901093027', 'Muhamad Irvan', 'Pembuatan Sistem Informasi UPTD (Unit Pelaksana Teknik Daerah) PSAA (Panti Sosial Asuhan Anak) Tri Murni Padang Panjang Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(454, '1901091019', 'Fauza Darmansyah', 'SISTEM INFORMASI BARANG BEKAS BERKUALITAS BERBASIS WEB MENGGUNAKAN NODE JS DAN NEXT JS', 'MERI AZMI, S.T, M.Cs', '0029068102', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(455, '1811081024', 'Dicky Syahfitra Lubis', 'Sistem pendukung keputusan menentukan peserta mentoring agama islam terbaik dengan metode simple additive weighting\r\n(Studi kasus : politeknik negeri padang)', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(456, '1901093024', 'Muthari Al Furqani', 'SISTEM INFORMASI WEDDING ORGANIZER PADA CV. ALAM MEGAH MENGGUNAKAN FRAMEWORK LARAVEL', 'RASYIDAH, S.Si, M.M.', '0001067407', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(457, '1801092027', 'Muhammad Panji', 'SISTEM INFORMASI PARIWISATA DI KOTA PARIAMAN BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNITER 3', 'RASYIDAH, S.Si, M.M.', '0001067407', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(458, '1811082024', 'Afrizal Fauzi', 'Sistem Pendukung Keputusan Penentuan Jurusan Siswa Baru SMAN 1 Sungai Geringging Menggunakan Metode SMART', 'DEFNI, S.Si, M.Kom', '0007128104', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(459, '1811081007', 'M. Ikhsan Gumanof', 'SISTEM MANAJEMEN RUANGAN MENGGUNAKAN ARSITEKTUR MODEL VIEW VIEWMODEL (MVVM) (Studi Kasus: Politeknik Negeri Padang)\r\n', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(460, '1811082012', 'Muhammad Ariq Hendry', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN DOSEN TERBAIK DENGAN METODE AHP DAN EDAS\r\n(STUDI KASUS JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG)\r\n\r\n', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(461, '1901092012', 'Rifki Kurnia', 'PENGEMBANGAN APLIKASI BERBAGI INFORMASI POLITEKNIK NEGERI PADANG BERBASIS MOBILE MENGGUNAKAN MERN STACK', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(462, '1901091022', 'Adinda Putri Junaidi', 'Perancangan Aplikasi Sistem Informasi Nagari Pada Kecamatan Sangir Solok Selatan Berbasis Android Menggunakan Bahasa Pemrograman Kotlin', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(463, '1901092022', 'Febrariola Navida', 'Sistem Informasi Inventory dan Manajamen Keuangan di Bengkel Irvan Motor', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(464, '1901082009', 'Afif Farhan Ichwanda', 'Perancangan dan Implementasi Private Cloud Storage Server Menggunakan Nextcloud Pada Ubuntu Server di UPT Komputer Politeknik Negeri Padang', 'FITRI NOVA, M.T, S.ST', '1029058502', 'DEFNI, S.Si, M.Kom', '0007128104'),
(465, '1801092019', 'Akbar Fadilah Rahman', 'Aplikasi pendaftaran online serta monitoring antrian dluksdentalclinic.com berbasisweb', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(466, '1901093028', 'Rahmat Tri Saputra', 'RANCANG BANGUN SISTEM INFORMASI PRAKTEK KERJA LAPANGAN PADA SMK N 2 PADANG PANJANG MENGGUNAKAN FRAMEWORK LARAVEL', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(467, '1901082025', 'Putri Nadya', 'RANCANG BANGUN JEMURAN OTOMATIS MENGGUNAKAN NODEMCU ESP32 DENGAN NOTIFIKASI TELEGRAM ', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(468, '1811081010', 'Devara Yudia Alindi', 'Penerapan sistem pakar diagnosa penyakit pada tanaman cabai menggunakan metode forward chaining berbasis android ', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205'),
(469, '1901092003', 'Muhammad Olif Rahmadia', 'SISTEM INFORMASI PELAYANAN JASA  LAUNDRY BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK CODEIGNITER ', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(470, '1811082021', 'Yasri Aldi', 'PERBANDINGAN METODE CERTAINTY FACTOR DENGAN FORWARD CHAINING PADA SISTEM PAKAR SKRINING KEHAMILAN RESIKO TINGGI (STUDI KASUS: PUSKESMAS SUNGAI MANDAU)', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(471, '1811081033', 'Robby Aprilian', 'Analisa dan Perancangan Ulang Antar Muka Website (Pariwisata.padang.go.id) Sebagai Media Informasi Menggunakan Metode Design Thinking', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(472, '1901093040', 'M Al Hafiz', 'SISTEM INFORMASI PENJUALAN TANAMAN HIAS ROSE FLORIST PADANG PANJANG MENGGUNAKAN LARAVEL', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(473, '1901093026', 'Scandra Rahmadani', 'PEMBUATAN SISTEM INFORMASI PENJUALAN ONLINE BARANG SECOND BERBASIS MVC MENGGUNAKAN LARAVEL DITOKO SEKEN THRIFT', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(474, '1901082015', 'Anselya Meilanitawati Fitri', 'PENERAPAN KEAMANAN JARINGAN MENGGUNAKAN METODE FIREWALL  DAN SECURITY PORT \r\nDI RUMAH SAKIT UNAND\r\n', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(475, '2001091006', 'Elvirina Joice Monica', 'Sistem Informasi Pelayanan Toko Sembako Amanah Berbasis web', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(476, '1901082011', 'Muhammad Angga Fitra Ramadhan', 'METASPLOIT TESTING UNTUK SERVER HARDENING', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(477, '1901082022', 'Muhammad Danny Utama', 'TANDA TANGAN ELEKTRONIK PADA BADAN KEPEGAWAIAN DAERAH PROVINSI SUMATERA BARAT', 'HUMAIRA, S.T, M.T', '0019038103', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(478, '1801092011', ' Mohammad Rafiqi', 'RANCANG BANGUN TOKO ONLINE BERBASIS WEBSITE E-COMMERCE PADA TOKO GOODWILL\r\n', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'DEFNI, S.Si, M.Kom', '0007128104'),
(479, '1811081031', 'Ulul Azmi', 'PENDETEKSIAN AROMA GANJA KERING MENGGUNAKAN ALGORITMA RANDOM FOREST', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'HUMAIRA, S.T, M.T', '0019038103'),
(480, '1901092015', 'Azhim Azda Nugraha', 'Rancang Bangun Aplikasi Pariwisata Kabupaten Bantul Berbasis Web Menggunakan Framework Laravel', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(481, '1811082022', 'Farros Hazim', 'pembuatan website perusahaan menggunakan pendekatan human centered design', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(482, '2111089014', 'Yolanda', 'IMPLEMENTASI ALGORITMA C4.5 UNTUK PREDIKSI KELULUSAN TEPAT WAKTU MAHASISWA FAST TRACK S2 BERBASIS WEB', 'RONAL HADI, S.T, M.Kom', '0029017603', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(483, '2001092013', 'Neni Harisah', 'Sistem Informasi Keuangan Organisasi Ikatan Pelajar Muhammadiyah Pimpinan Daerah Kota Padang Berbasis Web', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(484, '2001092065', 'Sulthanah Adibah Syifa', 'Sistem Informasi Monitoring Kegiatan Tender Di Dinas Pekerjaan Umum (PU) dan Unit Penyediaan Barang Dan Jasa (UKPBJ) Menggunakan Framework Laravel', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(485, '2001092066', 'Syafik Maula Faiz', 'SISTEM PELAYANAN ONLINE DI QTE-NET KAFE BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'DEFNI, S.Si, M.Kom', '0007128104', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(486, '2001092061', 'Rivo Yulio', 'PENGEMBANGAN SISTEM INFORMASI BIMBINGAN PENASEHAT AKADEMIK JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG\r\n', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(487, '1911081007', 'Rizky Anugrah Hasibuan', 'CLUSTERING DATA TINGKAT PEREKENOMIAN DI NAGARI KOTO BARU SIMALANGGANG DENGAN MENGGUNAKAN METODE HIERARCHICAL CLUSTERING', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(488, '1911081023', 'Adio Ihsan', 'RANCANG BANGUN SIMULASI SISTEM PENGAMANAN GEDUNG BERBASIS FACE BIOMETRIC DAN KAMERA THERMAL DENGAN PENGECEKAN KEASLIAN WAJAH DAN QR CODE', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'DEFNI, S.Si, M.Kom', '0007128104'),
(489, '2111089004', 'Faizura Zadri', 'PENERAPAN JARINGAN SARAF TIRUAN PADA SISTEM PREDIKSI PEKERJAAN MAHASISWA MENGGUNAKAN METODE BACKPROPAGATION BERBASIS MOBILE', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(490, '2001092038', 'Adithya Rachmat', 'RANCANG BANGUN APLIKASI BERBASIS ANDROID \r\nUNTUK PENCARIAN LOKASI INDEKOS MENGGUNAKAN \r\nFRAMEWORK FLUTTER DI KOTA PADANG', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(491, '2001092034', 'Rocky Hendri', 'APLIKASI PENCARIAN LOKASI TEMPAT PEMBUANGAN \r\nSAMPAH DI KOTA PADANG BERBASIS ANDROID \r\nMENGGUNAKAN FLUTTER', 'MERI AZMI, S.T, M.Cs', '0029068102', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(492, '2001092063', 'Ryan Febrialdo', 'SISTEM INFORMASI MANAJEMEN KEPERAWATAN MANDIRI WOOCARE\r\n', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'DEFNI, S.Si, M.Kom', '0007128104'),
(493, '2001092012', 'Nanda Julian Lubis', 'PENGEMBANGAN APLIKASI SISTEM MANAJEMEN PEMBELAJARAN DI JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG BERBASIS WEBSITE', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(494, '2001092062', 'Ronny Febrian Saputra', 'Sistem Informasi Administrasi Keuangan Pada CV Funsport Indonesia Berbasis Web Menggunakan Framework Laravel', 'Fanni Sukma, S.ST., M.T', '0006069009', 'HUMAIRA, S.T, M.T', '0019038103'),
(495, '2001092017', 'Zirva Zaitul Qolbi', 'Perancangan Sistem Informasi Koperasi SMAN 2 BATANG ANAI berbasis Web Menggunakan Framework Laravel\r\n\r\n', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(496, '2001092070', 'Wuri Fatiha Sari', 'Sistem Informasi Autodebet BPJS Kesehatan Pada Bank SUMSEL BABEL Berbasis Java Spring Boot dan React', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(497, '2001092032', 'Mutiara Cornelia Damayanti', 'PERANCANGAN SISTEM INFORMASI PENGAJUAN ANGGARAN DAN LAPORAN KEGIATAN ORGANISASI MAHASISWA BERBASIS WEB (STUDI KASUS : POLITEKNIK NEGERI PADANG)', 'RONAL HADI, S.T, M.Kom', '0029017603', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(498, '2001091016', 'Seuhendra Setiawan', 'Sistem Informasi Manajemen Sampah (SIMAS) Kelurahan Koto Luar', 'RASYIDAH, S.Si, M.M.', '0001067407', 'FAZROL ROZI, M.Sc.', '0021078601'),
(499, '2001092057', 'Muhammad Raihan Akbar', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INVENTORY POLITEKNIK NEGERI PADANG', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(500, '2001092023', 'Olivia Tri Suci Salsabilla', 'SISTEM INFORMASI E-COMMERCE PENJUALAN ROTI PADA PABRIK ROTI RUMAHAN MEYZA BAKERY BERBASIS WEB', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(501, '2001092009', 'Febrila Sucia', 'SISTEM LAYANAN & PENGETAHUAN KESEHATAN MENTAL PSIKOLOGI BERBASIS WEB MENGGUNAKAN MERN STACK', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(502, '2001092030', 'Faradilla Azhary', 'SISTEM INFORMASI PENYEWAAN DAN PEMESANAN PADA LUKMAN ENTERPRISE MENGGUNAKAN FRAMEWORK CI 4', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'HUMAIRA, S.T, M.T', '0019038103'),
(503, '2001092027', 'Ruzy Iqbal Angdani', 'IT TICKETING SOLUTIONS ARCHITECHT R17 GROUP BERBASIS WEB FRAMEWORK LARAVEL', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(504, '2001092004', 'Annisa Firstiyohana', 'SISTEM INFORMASI PEMESANAN JASA MAKE-UP AYANG DEVI BERBASIS WEB MENGGUNAKAN LARAVEL', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(505, '2001092025', 'Trynoli Azhari', 'SISTEM INFORMASI PENGOLAHAN DATA MIA TRAVEL MENGGUNAKAN FRAMEWORK LARAVEL', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(506, '2001092035', 'Abdul Fikri', 'SISTEM INFORMASI REKRUTMEN PEGAWAI BARU PADA KANTOR KENAGARIAN SIMAWANG MENGGUNAKAN FRAMEWORK LARAVEL', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(507, '2001092002', 'Fejratul Utami', 'APLIKASI PENDAFTARAN LOMBA BIOMALISH-GENOMIC SMA N 1 2 X 11 ENAM LINGKUNG BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(508, '2001093001', 'Farah Hisanah Adwina', 'SISTEM INFORMASI PENJUALAN TOKO KELONTONG DAVIRA CELL BERBASIS WEB', 'HUMAIRA, S.T, M.T', '0019038103', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(509, '2001093002', 'Nazlah Atthahirah Dwi Melki', 'TOKO ONLINE BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL PADA MINIMARKET VININTAMART ', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(510, '2001092003', 'Andari Yudani', 'PERANCANGAN SISTEM INFORMASI DIGITAL MAINTENANCE ALAT PADA PABRIK ES NELAYAN PASIR TIKU MENGGUNAKAN BACKEND LARAVEL DAN FRONTEND VUE JS', 'RASYIDAH, S.Si, M.M.', '0001067407', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(511, '2001092051', 'Hagi Matahari Julio', 'Aplikasi Pengelola Parkir Kendaraan Bermotor Berbasis Mobile Android Politeknik Negeri Padang ', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(512, '2001091018', 'Rita Ramadani', 'Sistem Informasi Penjualan Alvanza Food Court Berbasis Web', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(513, '2001082022', 'Vanny Widyawillis', 'PERANCANGAN DAN IMPLEMENTASI HIGH AVAILABILITY PADA PROXMOX MULTI NODE', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(514, '2001092014', 'Sintari Aulia', 'PERANCANGAN APLIKASI PEMESANAN PADA KAUSA KOPI BERBASIS WEBSITE MENGGUNAKAN REACT JS, EXPRESS JS DAN MYSQL', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'DEFNI, S.Si, M.Kom', '0007128104'),
(515, '2001092036', 'Fachrur Rozi', 'Aplikasi Pencarian wisata Kuliner Khas Pariaman Menggunakan Flutter', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(516, '2001092016', 'Winda Wulandari', 'SISTEM INFORMASI BOOKING ONLINE LAYANAN PADA TEDUH HAIR STUDIO BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(517, '2001091012', 'Vivin Erialis Puteri', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI PENJUALAN PADA TOKO AYESHA PROJEK BERBASIS WEB', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'HUMAIRA, S.T, M.T', '0019038103'),
(518, '2001092006', 'Azzah Ratul Fadhilah', 'Sistem Informasi Klinik Di Klinik Desa Ladang Laweh Berbasis Web Menggunakan Framework Laravel', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(519, '2001092001', 'Alim Rahmat Putra', 'Sistem Informasi Pengolahan Nilai Mata Kuliah Di Jurusan Teknologi Informasi Perguruan Tinggi Berbasis Web Framework Laravel', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'FAZROL ROZI, M.Sc.', '0021078601'),
(520, '2001092049', 'Dinniatul Aqidah Azmi', 'Sistem Informasi Museum Rumah Kelahiran Bagindo Aziz Chan', 'FAZROL ROZI, M.Sc.', '0021078601', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(521, '2001092044', 'Arsyad Hamidi', 'SISTEM INFORMASI LAYANAN KESEHATAN WILAYAH\r\nSARAWAK MALAYSIA DENGAN MENGGUNAKAN\r\nFRAMEWORK LARAVEL', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(522, '2001091002', 'Trio Naldo', 'Sistem Informasi Koperasi Simpan Pinjam Menggunakan Framework Laravel Pada Dinas Koperasi Dan Usaha Mikro Kota Depok', 'MERI AZMI, S.T, M.Cs', '0029068102', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(523, '2001092042', 'Aqilla Zahra', 'Aplikasi Booking Jasa Grooming Dan Dokter Hewan Pada Pit.Pit Pet Care Solok Berbasis Android', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(524, '2001092039', 'Aditya Perdana Rizal', 'SISTEM INFORMASI KEPENDUDUKAN KANTOR WALI NAGARI TANJUNG KECAMATAN SUNGAYANG TANAH DATAR MENGGUNAKAN FRAMEWORK LARAVEL ', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(525, '2001092028', 'Fajar Putra Pratama', 'RANCANG BANGUN SISTEM INFORMASI PENYEWAAN ALAT OUTDOOR BERBASIS WEB PADA JELAJAH ALAM SUMBAR', 'RONAL HADI, S.T, M.Kom', '0029017603', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(526, '2001092048', 'Dina Nurulhuda', 'Sistem Informasi Inventori Kedai Kopi Rona Berbasis WEB Menggunakan Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(527, '2001092021', 'Iqbal Dirmasyah', 'RANCANG BANGUN SISTEM INFORMASI PELAYANAN KESEHATAN SPESIALIS GIGI BERBASIS WEB di MARYAM DENTAL CARE', 'MERI AZMI, S.T, M.Cs', '0029068102', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(528, '2001092026', 'Fantony Rafly', 'SISTEM INFORMASI PRAKTEK UMUM dr. LARA PUSPITA NINGRUM BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DEFNI, S.Si, M.Kom', '0007128104'),
(529, '2001092019', 'Azlan', 'SISTEM INFORMASI PELAYANAN PUBLIK\r\nNAGARI SUMANIK BERBASIS WEB MENGGUNAKAN REACT JS DAN EXPRESS JS\r\n', 'DEFNI, S.Si, M.Kom', '0007128104', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(530, '2001091011', 'Zenita Ulfatihasanah', 'SISTEM INFORMASI MODUL PEMBELAJARAN (E-MODUL) KELAS 10 DI SMA NEGERI 1 RANAH PESISIR BERBASIS ANDROID', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(531, '2001092041', 'Amanda Septiani', 'SISTEM INFORMASI MANAGEMEN KEPEGAWAIAN (SIMPEG) DI KANTOR WALI NAGARI CANDUANG KOTO LAWEH BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'DEFNI, S.Si, M.Kom', '0007128104', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(532, '2001092033', 'Rahmi Rainnasya', 'APLIKASI PEMESANAN JASA LAUNDRY BERBASIS ANDROID PADA LOVA LAUNDRY \r\n', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(533, '2001091003', 'Eno Fitriyanti', 'SISTEM INFORMASI PERPUSTAKAAN DENGAN MENGGUNAKAN BARCODE DI SD IT ADZKIA 1 KOTA PADANG BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK LARAVEL', 'MERI AZMI, S.T, M.Cs', '0029068102', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(534, '2001092024', 'Asraf', 'PERANCANGAN SISTEM INFORMASI TOUR TRAVEL DREAMLAND HOLIDAY BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL DAN API', 'RASYIDAH, S.Si, M.M.', '0001067407', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(535, '2001092029', 'Dinda Rahmadani Rahayu', 'SISTEM INFORMASI PEMESANAN MENU MAKAN CAFE TERAS KARTINI BERBASIS WEB MENGGUNAKAN LARAVEL\r\n', 'Fanni Sukma, S.ST., M.T', '0006069009', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(536, '2001091020', 'Jacky Andrazat', 'SISTEM INFORMASI KEPENDUDUKAN PADA RT 2 RW 5 KOMPLEK WALUYO KELURAHAN KOTO LUAR KECAMATAN PAUH DI PADANG', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'FAZROL ROZI, M.Sc.', '0021078601'),
(537, '2001082024', 'Cantika Melati', 'MEMBANGUN APLIKASI BERBASIS WEB OBROLAN VIDEO MENGGUNAKAN AGORA', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(538, '2001092045', 'Bakti Aulia Zikri', 'RANCANG BANGUN APLIKASI BOOKING LAYANAN GROOVE BARBERHOUSE BERBASIS WEB', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'DEFNI, S.Si, M.Kom', '0007128104'),
(539, '2001092011', 'Muhammad Byon', 'SISTEM INFORMASI PORTAL SEKOLAH BERBASIS WEB PADA SMK NEGERI 1 PADANG\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(540, '2001092015', 'Viola Yosevi', 'PERANCANGAN SISTEM INFORMASI PENGELOLAAN DISTRIBUSI BARANG BERBASIS WEB DI CV BERKAT REZEKI YOSEV', 'HUMAIRA, S.T, M.T', '0019038103', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(541, '2111089010', 'Merisa Adha Azzahra', 'IMPLEMENTASI PERBANDINGAN METODE LEAST SQUARE DAN SINGLE EXPONENTIAL SMOOTHING UNTUK PERAMALAN PERSEDIAAN BARANG PADA SISTEM INVENTORY CV. TRE JAYA PERKASA MENGGUNAKAN LARAVEL', 'MERI AZMI, S.T, M.Cs', '0029068102', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(542, '2001092020', 'Windy Elsy Dinata', 'Pengembangan Sistem Informasi Praktik Kerja Lapangan pada Jurusan Teknologi Informasi Politeknik Negeri Padang Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(543, '2001092050', 'Fanda Alfaridzi', 'SISTEM INFORMASI PETTY CASH PT.JASAMEDIKA SARANATAMA', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(544, '2001091005', 'Anisa Rahmadhani', 'Rancangan Sistem Informasi Pengelolaan Bantuan Dana Desa di Nagari Pasar Bukit Air Haji Berbasis Web', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'HUMAIRA, S.T, M.T', '0019038103'),
(545, '2001091009', 'Reza Aulia Rahmi', 'RANCANG BANGUN SISTEM INFORMASI PENGOLAHAN \r\nDATA NILAI SISWA (E-RAPORT) BERBASIS WEB \r\nPADA SEKOLAH MENENGAH KEJURUAN (SMK) RANAH \r\nAMPEK HULU TAPAN\r\nMENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEFNI, S.Si, M.Kom', '0007128104'),
(546, '2001082009', 'Ilham Anugrah', 'IMPLEMENTASI SEGMENT ROUTING v6 To The FUTURE NETWORK', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FAZROL ROZI, M.Sc.', '0021078601'),
(547, '2001082011', 'Jawahiir Abdillah', 'Implementasi Teknologi Cloud Computing Menggunakan Docker Pada Aplikasi Media Blog', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(548, '2001092022', 'Nadanty Oktalia', 'Sistem Informasi Kenaikan Gaji Berkala Kantor BKPSDM Kota Padang Berbasis Web Menggunakan Laravel', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(549, '2001091004', 'Nawaytu Alrivani', 'Sistem Informasi Pemberdayaan Masyarakat Nagari Sako Utara Pasia Talang', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(550, '2001082027', 'Rahmad Hidayat', 'ANALISIS KEAMANAN PADA INFRASTRUKTUR JARINGAN WIRELESS MENGGUNAKAN METODE PENETRATION TESTING', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(551, '2001081006', 'Dira Agustina', 'IMPLEMENTASI CHATBOT\r\nMENGGUNAKAN WATSON DISCOVERY \r\nDAN WATSON ASSISTANT PADA IBM CLOUD\r\n', 'ALDE ALANDA, S.Kom, M.T', '0025088802', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(552, '1911082004', 'Restu Averian Putra', 'Penentuan Dosen Pembimbing Tugas Akhir Jurusan TI PNP dengan Metode AHP-EDAS dan Algoritma Winnowing', 'RASYIDAH, S.Si, M.M.', '0001067407', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(553, '2001092010', 'Ica Nur Pramanti', 'SISTEM INFORMASI PENJUALAN TOKO SEMBAKO DI \r\nSRC RANI CELL MENGGUNAKAN FRAMEWORK \r\nLARAVEL', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(554, '2001091017', 'Ridho Rinaldi', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI INVENTORY BERBASIS WEBSITE DENGAN FRAMEWORK LARAVEL (STUDI KASUS PADA TOKO PIAN)', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(555, '2001082034', 'Ananda Rizki Wulanuri', 'Penerapan Fitur Edge-IoT Pada Pemantauan Suhu dan Kelembaban Serta Konsentrasi Gas Ammonia (NH3) pada Kualitas Udara  Kandang Sapi.\r\n', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FAZROL ROZI, M.Sc.', '0021078601'),
(556, '2111089001', 'Arga Zulsilva', 'IMPLEMENTASI METODE ARAS (ADDITIVE RATIO ASSESSMENT) UNTUK MENGETAHUI MINAT JAMAâ€™AH UMRAH PADA PT SELATOUR PADANG BERBASIS WEB', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(557, '2001092018', 'Feby Desna Yunita', 'Rancang Bangun Sistem Informasi E-SuratNagari : Pelayanan Pembuatan dan Pengarsipan Surat Berbasis Website pada Kantor Wali Nagari Durian Tinggi', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(558, '2001092059', 'Naufal Asyraf Idrisa', 'SISTEM INFORMASI PENJUALAN ONLINE PADA TOKO YVE.ID BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(559, '2001092037', 'Grahilda Calista', 'SISTEM INFORMASI PENGELOLAAN DATA JAHIT PAKAIAN DI ARMYFA TAYLOR', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606'),
(560, '2001081005', 'Aulia Permatasari', 'IMPLEMENTASI CLOUD COMPUTING INFRASTRUCTURE AS A SERVICE (IAAS) AWS UNTUK E-LEARNING BERBASIS OPEN SOURCE', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(561, '2001092053', 'M.ihsan Edisa Putra', 'Sistem Informasi Pengelolaan Kegiatan Magang Studi Kasus\r\nPT.Arkamaya Berbasis Mobile', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(562, '2001092067', 'Syahbandar Pujangga', 'SISTEM INFORMASI MANAJEMEN PELAYANAN SURAT DI DESA APAR', 'DEFNI, S.Si, M.Kom', '0007128104', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(563, '1911081013', 'Nikita Chairunnisa', 'PERBANDINGAN  METODE REGRESI RIDGE DENGAN METODE REGRESI  LASSO UNTUK PREDIKSI LAMA KELULUSAN ', 'HUMAIRA, S.T, M.T', '0019038103', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(564, '2001092069', 'Witri Wulandari', 'Rancang Bangun Sistem Informasi Manajemen RW 07 Kelurahan Ganting Parak Gadang Kecamatan Padang Timur Berbabis web', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(565, '2001092068', 'Vicky Adzandra', 'SISTEM INFOMASI TOKO ONLINE PADA PETSHOP ONE BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(566, '2001081010', 'Windi Monika', 'Smart Lock Laboratorium Kampus Berbasis IoT', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'FAZROL ROZI, M.Sc.', '0021078601'),
(567, '2001082043', 'Muhammad Abdurrahman Al Aqil', 'IMPLEMENTASI CLOUD COMPUTING PADA SISTEM PEMINJAMAN BUKU PERPUSTAKAAN BERBASIS IOT', 'FITRI NOVA, M.T, S.ST', '1029058502', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(568, '2001082019', 'Silvi Julika', 'PENERAPAN TEKNOLOGI AWS (Amazon Web Service) PADA SMART LABOR KOMPUTER MENGGUNAKAN MODUL ESP8266 BERBASIS WEB', 'FITRI NOVA, M.T, S.ST', '1029058502', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(569, '2001082014', 'Nurul Vania', 'Analisis Keamanan Aplikasi Berbasis Android Menggunakan OWASP Mobile Application Security Testing Guide', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(570, '2001082016', 'Raihan Muthiaz', 'ANALISIS PENANGANAN CROSS-SITE SCRIPTING (XSS ATTACK) MENGGUNAKAN METODE PTES (PENETRATION TESTING EXECUTION STANDART) PADA APLIKASI BERBASIS WEB', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(571, '2111089008', 'Ikhwan Pardamean Siregar', 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN OPERATOR TERBAIK DENGAN METODE MABAC DI DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN PADANG PARIAMAN', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'FAZROL ROZI, M.Sc.', '0021078601'),
(572, '1811081025', 'Alvin Faiz Zulfitri', 'Implementasi Convolutional Neural Network dan Vincenty Formula dalam Sistem Absensi Wajah Berbasis Web untuk Pengelolaan Kehadiran Mahasiswa Teknologi Informasi Politeknik Negeri Padang', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(573, '2001081002', 'Sulis Tiyah', 'IMPLEMENTASI CLOUD COMPUTING MENGGUNAKAN DOCKER DAN NODEJS PADA APLIKASI PRESENSI DI JURUSAN TEKNOLOGI INFORMASI POLITEKNIKÂ NEGERIÂ PADANG', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(574, '2001081016', 'Fadila Rahmi', 'SISTEM OTOMATISASI PEMBERIAN MAKAN KUCING BERDASARKAN VARIABEL BERAT BADAN\r\nMENGGUNAKAN PLATFORM AWS BERBASIS IOT\r\n', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'FAZROL ROZI, M.Sc.', '0021078601'),
(575, '2001081009', 'Zeni Tasri', 'Pemanfaatan mikrotik untuk jaringan hotspot berbasis voucher dengan keamanan VPN (Virtual Private Network) di Nagari Sungai Abu, Kec. Hiliran Gumanti, Kab. Solok', 'RONAL HADI, S.T, M.Kom', '0029017603', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(576, '2001092040', 'Afifah Maharani', 'RANCANG BANGUN E-COMMERCE BERBASIS WEB BUTIK MISSGAIIA MENGGUNAKAN FRAMEWORK LARAVEL', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(577, '2001081011', 'Sisi Priscilla', 'PEMBUATAN BACK END PADA SISTEM SMART HOME BERBASIS IOT DENGAN PLATFORM AWS', 'FITRI NOVA, M.T, S.ST', '1029058502', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(578, '2001082023', 'Muhammad Hafiz Alkautsar', 'RANCANG BANGUN MONITORING DETEKSI DINI BANJIR MENGGUNAKAN INTERNET OF THINGS BERBASIS WEBSITE DENGAN AWS CLOUD', 'FITRI NOVA, M.T, S.ST', '1029058502', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(579, '2001082010', 'Ilma Yusnita', 'IMPLEMENTASI CLOUD STORAGE MENGGUNAKAN OWNCLOUD PADA  AMAZON WEB SERVICE\r\nDI SMPN 8 PARIAMAN\r\n', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(580, '2001092054', 'Muhammad Alfi', 'RANCANG BANGUN APLIKASI COFFE SHOP VOCA BUKITTINGGI MENGGUNAKAN FRAMEWORK LARAVEL', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(581, '1901093038', 'Fakhrie Ramadhan Eka Putra', 'SISTEM INFORMASI PENJUALAN ONLINE CONVEYOR MENGGUNAKAN FRAMEWORK LARAVEL', 'RONI PUTRA, S.Kom, M.T ', '0022078607', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(582, '2001081003', 'Ali Zikri Fadli', 'PERANCANGAN DAN IMPLEMENTASI CLOUD STORAGE \r\nMENGGUNAKAN NEXTCLOUD PADA \r\nJURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI PADANG', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(583, '2001082025', 'Rahmatul Hayani', 'IMPLEMENTASI SISTEM KEAMANAN KOTAK AMAL MASJID DI POLITEKNIK NEGERI PADANG BERBASIS INTERNET OF THINGS', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(584, '2001082028', 'Wan Bunga', 'IMPLEMENTASI CLOUD STORAGE DALAM SISTEM E-GOVERNMENT MENGGUNAKAN NEXTCLOUD DENGAN METODE SNAPSHOTTING PADA LAYANAN AMAZON WEB SERVICE DI KANTOR DESA TUNGKAL UTARA\r\n', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(585, '2001082005', 'Elsi Febriani', 'SISTEM MONITORING KUALITAS AIR DAN KONTROL PAKAN IKAN PADA KOLAM IKAN BERBASIS INTERNET OF THINGS (IOT)', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(586, '2001082026', 'Muhammad Fadhel', 'IMPLEMENTASI CLOUD STORAGE DAN KETERSEDIAAN FITUR TALK MENGGUNAKAN NEXTCLOUD\r\n', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(587, '1911081011', 'Shatfi Husna', 'OPTIMASI SKALABILITAS DAN PERFORMA INFRASTRUKTUR KUBERNETES MENGGUNAKAN HORIZONTAL POD AUTOSCALING (HPA) BERBASIS MICROSERVICES API', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(588, '1911081024', 'Siska Nofri Dania', 'KOMBINASI METODE ROC DAN WASPAS DALAM PENGAMBILAN KEPUTUSAN PENERIMAAN BANTUAN PROGRAM INDONESIA PINTAR (PIP) \r\n(Studi Kasus : SMAN 9 Padang\r\n', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'FAZROL ROZI, M.Sc.', '0021078601'),
(589, '1911081014', 'Mesi Puspita Sari', 'PEMBANGUNAN SISTEM INFORMASI BANK SAMPAH MENGGUNAKAN BUSINESS PROCESS MODELLING NOTATION (BPMN) \r\n(STUDI KASUS BANK SAMPAH PANCA DAYA KOTA PADANG)\r\n', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(590, '2001082004', 'Dhea Nur Izzaty Amanda', 'RANCANG BANGUN SISTEM KEAMANAN PINTU RUANGAN BERBASIS FACE RECOGNITION MENGGUNAKAN RASPBERRY PI DAN APLIKASI TELEGRAM', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(591, '2001081008', 'Wezi Adri Wilmi', 'IMPLEMENTASI PENYIRAMAN TANAMAN OTOMATIS  PADA PEMANTAUAN KELEMBABAN TANAH, SUHU SERTA WARNA DAUN TANAMAN BERBASIS INTERNET OF THINGS (IOT)\r\n', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(592, '2001082003', 'Bunga Hendriani', 'SISTEM KONTROL DAN MONITORING DAYA LAMPU DAN STOPKONTAK PADA RUMAH PINTAR BERBASIS INTERNET OF THINGS (IOT)', 'CIPTO PRABOWO, S.T, M.T', '0002037410', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(593, '1901093013', 'Sarifa Suhaila', 'Sistem Informasi Pelayanan Jasa Man Photo Digital Studio Menggunakan Framework Laravel', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802'),
(594, '2001091013', 'Gema Hamdi Hizbullah', 'SISTEM INFORMASI MAL ANTRIAN PELAYANAN PUBLIK KABUPATEN BOGOR MENGGUNAKAN FREMEWORK LARAVEL', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(595, '2001092031', 'Zikri Wahyu', 'Pembangunan Sistem Informasi Manajemen Pengelolaan Kendaraan Berbasi Web Framework Laravel', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(596, '2001082017', 'Rangga Wahyu Prima', 'IMPLEMENTASI DOCKER CONTAINER UNTUK DEPLOYMENT APLIKASI WEB', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(597, '2111089011', 'Teten Dwi Rahmi Kiflinda', 'IMPLEMENTASI PERBANDINGAN AKURASI METODE LEAST SQUARE DAN DOUBLE MOVING AVERAGE DALAM PERAMALAN PERSEDIAAN BARANG PADA TOKO ONLINE TELATEN KARYA\r\n', 'HUMAIRA, S.T, M.T', '0019038103', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(598, '1911081009', 'Ulil Ambri', 'PENERAPAN METODE DESIGN THINKING DALAM PERANCANGAN UI/UX PADA WEBSITE E-COMMERCE SABIEKAH', 'Fanni Sukma, S.ST., M.T', '0006069009', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805'),
(599, '2001092047', 'Dian Rahmi Oktaviani', 'SISTEM INFORMASI ANTRIAN ONLINE PADA LAYANAN SERVIS AHASS LIBRA MOTOR', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(600, '2001082047', 'Albert Edya Pratama', 'PENERAPAN TOPOLOGI JARINGAN INTERNET DESA WISATA UNTUK PERCEPATAN PENGEMBANGAN DESTINASI WISATA BERKELANJUTAN PADA NAGARI TALANG BABUNGO KECAMATAN LEMBAH GUMANTI KABUPATEN SOLOK', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(601, '2001082038', 'Faruq Alif', 'IMPLEMENTASI TEKNIK GOOGLE DORK DAN TOOL SQLMAP TERHADAP KERENTANAN WEBSITE MENGGUNAKAN SQL INJECTION', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(602, '2001082006', 'Fachrizal Kurniawan', 'Implementasi Host-Based Intrusion Detection System Menggunkan OSSEC+', 'RONAL HADI, S.T, M.Kom', '0029017603', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(603, '1911082020', 'Aster Happy Lestari', 'KLASTERISASI DATA PENDUDUK NAGARI KOTO BARU SIMALANGGANG BERDASARKAN TINGKAT EKONOMI MENGGUNAKAN METODE K-NEAREST NEIGHBOR', 'RONAL HADI, S.T, M.Kom', '0029017603', 'DEFNI, S.Si, M.Kom', '0007128104'),
(604, '1811082026', 'Indah Putri Yeni', 'SISTEM PENDUKUNG KEPUTUSAN BERKELOMPOK DENGAN MENERAPKAN METODE AHP, TOPSIS DAN COPELAND SCORE UNTUK PENERIMAAN GURU SD SWASTA PADA YAYASAN BINA MANDIRI SEKOLAH DASAR ISLAM TERPADU DARUL FALAAH DI KOTA PARIAMAN', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806'),
(605, '2001082035', 'Erlangga Difa Yanzi', 'Implementasi Teknologi Docker Dan IDS Snort Pada Private Cloud Storage Di Natsumi Photography Kota Padang ', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(606, '2001082042', 'M Aryo De Fajri', 'IMPLEMENTASI SEARCH ENGINE OPTIMIZATION PADA WEBSITE BERBASIS JOOMLA UNTUK MENINGKATKAN SEARCH ENGINE RESULT PAGE\r\n', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'HUMAIRA, S.T, M.T', '0019038103'),
(607, '1911082021', 'Srintika Yuni Kharisma', 'ANALISIS KLASIFIKASI PENYAKIT MATA DENGAN  PERBANDINGAN METODE RANDOM FOREST DAN METODE K-NEAREST NEIGHBOR BERBASIS WEBSITE', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(608, '1911082031', 'Fitri Chairani', 'PEMBUATAN SISTEM INFORMASI DAN PENCARIAN DATA KEPENDUDUKAN MENGGUNAKAN ALGORITMA BOYER-MOORE PADA NAGARI KOTO BARU SIMALANGGANG', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(609, '2001082015', 'Putri Ayu', 'Perancangan dan Implementasi Arsitektur Jaringan Software-Defined Network (SDN) Menggunakan OpenDaylight dan OpenFlow Pada Lingkungan Simulasi Mininet', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(610, '1911082010', 'Luthfiyyah Riznisa', 'ANALISIS PENCAHAYAAN FACE DETECTION MENGGUNAKAN METODE HAAR CASCADE ', 'HUMAIRA, S.T, M.T', '0019038103', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(611, '2001082020', 'Silvia Nurmawati', 'Rancang Bangun Sistem Monitoring Penggunaan Energi Listrik Pada Rumah Kos Berbasis Internet Of Things', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(612, '1911081016', 'Raven Rivaldo', 'PERANCANGAN SISTEM MANEGEMENT INVENTORY DAN ANALISIS MENGGUNAKAN METODE MIN & MAX', 'DEFNI, S.Si, M.Kom', '0007128104', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(613, '1911082017', 'Hakkan Syukri', 'PEMBUATAN MODEL VOICE RESPOND PADA ALAT UJI PENDENGARAN', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(614, '1911082024', 'Muhammad Irfan', 'EXPERT SYSTEM DIAGNOSA STUNTING PADA BALITA MENGGUNAKAN METODE FORWARD CHAINING BERBASIS WEB', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(615, '1911081008', 'Arung Ramadhan Safii', 'PUPILOMETRI MENGGUNAKAN COMPUTER VISION', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(616, '1911082015', 'Audra Najmi Maghfira', 'SISTEM PENDUKUNG KEPUTUSAN PENYALURAN DANA TRANSFER KE DAERAH (TKD) PADA KPPN SIJUNJUNG MENGGUNAKAN METODE MULTI ATTRIBUTE UTILITY THEORY', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(617, '2001092058', 'Muhammad Siddiq', 'Sistem Informasi Kasir Toko Second Shop Menggunakan Laravel', 'MERI AZMI, S.T, M.Cs', '0029068102', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(618, '1911081020', 'Muhammad Ichmal Gumanof', 'SISTEM VERIFIKASI E-KTP MENGGUNAKAN FACE RECOGNITION', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(619, '2211089001', 'Arin Cantika Musi', 'PENDETEKSIAN DAN KLASIFIKASI KERUSAKAN JALAN BERBASIS DEEP LEARNING', 'RONAL HADI, S.T, M.Kom', '0029017603', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(620, '1911081021', 'Afifahtul Hidayati Z', 'PEMBUATAN APLIKASI PERENCANAAN MENU KELUARGA BERBASIS ANDROID MENGGUNAKAN PENDEKATAN DESIGN THINKING ', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(621, '1911081001', 'Virdapiliacani', 'PERBANDINGAN METODE SINGLE EXPONENTIAL SMOOTHING DAN METODE TREND MOMENT UNTUK PERAMALAN PERSEDIAAN BARANG PADA SISTEM INVENTORI CV. TRE JAYA PERKASA', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(622, '1911082032', 'Dinda Tryandhary', 'Sistem Pendukung Keputusan Penentuan Uang Kuliah Tunggal Mahasiswa Menggunakan Kombinasi Metode AHP (Analytical Hierarchy Process) dan MFEP (Multifactor Evaluation Process)', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(623, '1911081019', 'Muhammad Ilham', 'PENERAPAN METODE WEIGHTED MOVING AVERAGE UNTUK PREDIKSI STOK OBAT (STUDI KASUS APOTIK SAUDARA)\r\n', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'DENI SATRIA, S.Kom, M.Kom', '0028097803'),
(624, '1911081012', 'Widia Lestari', 'Sistem Pendukung Keputusan Untuk Penyortiran Barang Yang Efisien Menggunakan Metode AHP dan ARAS', 'MERI AZMI, S.T, M.Cs', '0029068102', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105'),
(625, '1911082011', 'Rizqul Fauzy', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN GURU LES TERBAIK MENGGUNAKAN METODE FUZZY AHP (F-AHP) (STUDI KASUS : ENGLISH SCHOOL INDONESIA)', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(626, '1911082006', 'Andi Irham Marhamuddin', 'DETEKSI OBJEK MENGGUNAKAN MODEL YOLOv8 UNTUK IDENTIFIKASI JENIS ANGGREK', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(627, '1911082012', 'Redhatul Fitri', 'Penerapan Metode K-Means Clustering untuk Menentukan Pola Penjualan Produk Tembakau (Studi Kasus di Toko Tobacco Shop Taste)', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(628, '1911081015', 'Nola Reziyana', 'ANALISIS PERBANDINGAN RUANG DAN WAKTU PADA ALGORITMA BUBBLE SORT DAN QUICK SORT MENGGUNAKAN FRAMEWORK LARAVEL ', 'RONAL HADI, S.T, M.Kom', '0029017603', 'HUMAIRA, S.T, M.T', '0019038103'),
(629, '1911082029', 'Ihsanul Ikhwan Sawir', 'SISTEM PEMANTAUAN SUNGAI SECARA REAL-TIME UNTUK DETEKSI DINI BANJIR BANDANG MENGGUNAKAN TEKNOLOGI YOLO DENGAN MODEL SEGMENTASI AIR', 'FAZROL ROZI, M.Sc.', '0021078601', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(630, '1911082027', 'Muhammad Dzikrul Haq', 'PENGAWASAN SAMPAH SUNGAI BERDASARKAN CITRA VIDEO MENGGUNAKAN TEKNOLOGI TRANSFER LEARNING', 'FAZROL ROZI, M.Sc.', '0021078601', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301'),
(631, '1911082009', 'Muhammad Fikrullah', 'PENERAPAN ALGORITMA COSINE SIMILARITY DAN RABIN-KARP UNTUK PEMBUATAN WEBSITE PENDETEKSI BERITA HOAX', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(632, '2001081012', 'Fadhillah Herpani Siregar', 'ANALISIS PENCEGAHAN TERHADAP SERANGAN FLOODING ATTACK TCP DAN UDP MENGGUNAKAN SNORT IDS PADA KEAMANAN JARINGAN', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(633, '1911081004', 'Tiara Harmila', 'IMPLEMENTASI METODE NAÃVE BAYES UNTUK KLASIFIKASI DIAGNOSA STUNTING PADA BALITA (STUDI KASUS : NAGARI SINGGULIANG, KECAMATAN LUBUK ALUNG, PADANG PARIAMAN) \r\n', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'RASYIDAH, S.Si, M.M.', '0001067407'),
(634, '1911081006', 'Jimmy Efendi', 'SISTEM PENDUKUNG KEPUTUSAN REKOMENDASI PROGRAM STUDI DI POLITEKNIK NEGERI PADANG BERBASIS WEB MENGGUNAKAN METODE ELECTRE', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(635, '2001081014', 'Muhammad Ihsan', 'SISTEM MONITORING KUALITAS AIR MANDI SECARA REAL-TIME MELALUI HALAMAN WEBSITE SERTA NOTIFIKASI TELEGRAM', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(636, '2001082045', 'Torry Yosci P Nainggolan', 'RANCANG BANGUN SISTEM KEAMANAN DETEKSI KEBAKARAN MENGGUNAKAN INTERNET OF THINGS BERBASIS WEBSITE DENGAN NOTIFIKASI TELEGRAM', 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(637, '1911082002', 'Puji Dhiya Nabila', 'Penerapan Convolutional Neural Network dalam Mendeteksi dan Mengklasifikasikan Jenis Jerawat pada Wajah Manusia.', 'HUMAIRA, S.T, M.T', '0019038103', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(638, '1911082022', 'Rizki Ramadanil', 'Implementasi You Only Look Once (YOLO) dan Easy Optical Character Recognition (EasyOCR) dalam Pengenalan Karakter pada Plat Nomor Kendaraan Indonesia', 'HUMAIRA, S.T, M.T', '0019038103', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(639, '1911081017', 'Azim Ilhamdi', 'Implementasi Algoritma Knuth Morris Pratt Pada Fungsi Pencarian Untuk Aplikasi IT-Pedia Berbasis Web', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'YULHERNIWATI, S.Kom, M.T', '0019077609'),
(640, '1901091009', 'Zurriyata Thaibah', 'SISTEM INFORMASI PENGELOLAAN DATA INDEKOS BUNDA DI KOTA PADANG BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL', 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(641, '1901091015', 'Dian Astuti', 'PERANCANGAN DAN IMPLEMENTASI SISTEM INFORMASI KEUANGAN ORMAWA DI POLITENIK NEGERI PADANG BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK LARAVEL', 'ALDO ERIANDA, M.T, S.ST', '003078904', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(642, '2001082044', 'Nanda Vikran Yulzamdi', 'IMPLEMENTASI PEMANTAUAN PH DAN KUALITAS NUTRISI TANAMAN HIDROPONIK BERBASIS INTERNET OF THINGS (IOT) MENGGUNAKAN NODEMCU ESP32 MELALUI APLIKASI TELEGRAM', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(643, '1911081022', 'Debi Indah Syafira', 'SISTEM PENDUKUNG KEPUTUSAN PENERIMAAN PKH MENGGUNAKAN METODE AHP-ARAS (Studi Kasus : AMPEK ANGKEK KABUPATEN AGAM)', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209'),
(644, '1911082001', 'Windi Desti Wahyuni', 'Sistem Pakar diagnosa penyakit ayam broiler dengan metode certainty factor', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'HENDRICK, S.T, M.T.,Ph.D', '0002127705'),
(645, '1911081025', 'Suci Khairatuz Zahra', 'ANALISIS USABILITY TESTING PADA RANCANG BANGUN SISTEM INFORMASI DOKUMENTASI DAN PELAPORAN AKREDITASI DI JURUSAN TEKNOLOGI INFORMASI', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(646, '1911082026', 'Visra Handriani', 'PENERAPAN METODE WEIGHTED MOVING AVERAGE PADA SISTEM INFORMASI PERAMALAN PERSEDIAAN STOK BARANG USAHA BATU BUNGA', 'YANCE SONATHA, S.Kom, M.T', '0029128003', 'ALDO ERIANDA, M.T, S.ST', '003078904'),
(647, '1911082023', 'Satrialdi Fernanda Zami', 'Penerapan metode case based reasoning pada expert system diagnosa penyakit hipertensi berbasis web', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'DEFNI, S.Si, M.Kom', '0007128104'),
(648, '1911081005', 'M. Rafhi Akbar Yasya. U', 'PENERAPAN SISTEM PENDUKUNG KEPUTUSAN DALAM MENENTUKAN PRIORITAS PENGADAAN BARANG PADA KEDAI HARIAN YARNI MENGGUNAKAN METODE WEIGHTED PRODUCT', 'RASYIDAH, S.Si, M.M.', '0001067407', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(649, '1911082025', 'Haviz Alhadi', 'SISTEM PENDUKUNG KEPUTUSAN PENERIMAAN PEGAWAI BARU MENGGUNAKAN METODE WEIGHTED PRODUCT', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801'),
(650, '1911081018', 'Anisa Fadilah', 'Analis Menu Rekomendasi Berdasarkan Rating Pelanggan Menggunakan metode logika fuzzy', 'YULHERNIWATI, S.Kom, M.T', '0019077609', 'CIPTO PRABOWO, S.T, M.T', '0002037410'),
(651, '1911082013', 'Zelfriadi Abrar', 'PENERAPAN SISTEM PENDUKUNG KEPUTUSAN UNTUK PREDIKSI PENJUALAN MENGGUNAKAN METODE FUZZY TIME SERIES', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601');
INSERT INTO `proposal_ta` (`id_proposal_ta`, `nim`, `nama`, `judul`, `pembimbing_satu_nama`, `pembimbing_satu_nidn`, `pembimbing_dua_nama`, `pembimbing_dua_nidn`) VALUES
(652, '1911082033', 'Farhan Maulidani', 'SISTEM ABSENSI KARYAWAN MENGGUNAKAN METODE \r\nMTCNN (MULTITASK CASCADED CONVOLUTIONAL \r\nNEURAL NETWORK) DENGAN BERBASIS FACE \r\nRECOGNITION', 'RONAL HADI, S.T, M.Kom', '0029017603', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(653, '2001082046', 'Ulfa Izmilia', 'IMPLEMENTASI QUEUE TREE DAN VLAN MENGGUNAKAN CAPsMAN DI KOS BUK ERNA CUPAK TANGAH\r\n', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099'),
(654, '2001092046', 'Benny Kurniawan', 'SISTEM INFORMASI RSP (RUMAH SINGGAH PASIEN) IZI SUMBAR', 'DENI SATRIA, S.Kom, M.Kom', '0028097803', 'FAZROL ROZI, M.Sc.', '0021078601'),
(655, '1911082003', 'Pratama Aditya', 'PERBANDINGAN ANTARA METODE NAIVE BAYES DENGAN CERTAINTY FACTOR PADA SISTEM PAKAR DIAGNOSA PENYAKIT KEHAMILAN', 'DEFNI, S.Si, M.Kom', '0007128104', 'ALDE ALANDA, S.Kom, M.T', '0025088802'),
(656, '2001082029', 'Ridho Abdillah', 'IMPLEMENTASI DEV OPS DOCKER KUBERNETES UNTUK ORKETRASI KLUTER KONTAINER PADA LABOR TEKNOLOGI INFORMASI', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(657, '1911082030', 'Farid Alfajr Muhlis', 'SISTEM PAKAR DENGAN METODE FORWARD CHAINING UNTUK DIAGNOSA PENYAKIT THT BERBASIS MOBILE', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'YANCE SONATHA, S.Kom, M.T', '0029128003'),
(658, '1911082007', 'Andi Fathul Mukminin', 'Aplikasi Reinforcement Learning untuk Menyelesaikan Rubik Cube dengan Markov Decision Process berbasis Web', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEFNI, S.Si, M.Kom', '0007128104'),
(659, '1911082014', 'Abid Asshidiqie Nugraha', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN PEGAWAI TELADAN MENGGUNAKAN METODE AHP (ANALYTICAL HIERARCHY PROCESS) (STUDI KASUS : KPPN PAINAN)', 'DEFNI, S.Si, M.Kom', '0007128104', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804'),
(660, '2001082031', 'Nataysa Afrilia', 'SISTEM MONITORING RUANGAN BERBASIS INTERNET OF THINGS MENGGUNAKAN THINGSBOARD CLOUD', 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', 'RONI PUTRA, S.Kom, M.T ', '0022078607'),
(661, '1911082005', 'Muhammad Fadil', 'SISTEM PENDUKUNG KEPUTUSAN INDEKS PRESTASI SISWA SMA N 1 LINTAU SEBAGAI CALON PENDAFTAR SNBP MENGGUNAKAN METODE ANALYTICAL HIERARCHY PROCESS (AHP)', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', 'HUMAIRA, S.T, M.T', '0019038103'),
(662, '1811081021', 'Larra Dhuta', 'Sistem Pakar Diagnosa Penyakit Gigi dan Mulut Menggunakan Kombinasi Metode Forward Chaining dan Certainty Factor', 'HUMAIRA, S.T, M.T', '0019038103', 'FITRI NOVA, M.T, S.ST', '1029058502'),
(663, '2001082037', 'Faiz Abrar', 'SISTEM MONITORING DAN KONTROL KETINGGIAN AIR BENDUNGAN\r\nBERBASIS INTERNET OF THINGS DENGAN LAYANAN AWS CLOUD', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909'),
(664, '2001082039', 'Hapis Ependi', 'PERANCANGAN DAN IMPLEMENTASI SISTEM ABSENSI MENGGUNAKAN INTERNET OF THINGS BERBASIS WEBSITE\r\n', 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', 'Fanni Sukma, S.ST., M.T', '0006069009'),
(665, '2001082040', 'Kagum Ary Setiawan', 'Sistem Buka Pintu Rumah Otomatis Menggunakan E-KTP Berbasis Arduino', 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', 'HUMAIRA, S.T, M.T', '0019038103'),
(666, '2001082033', 'Aldo Spama Putra Suir', 'IMPLEMENTASI CLOUD STORAGE DENGAN DOCKER UNTUK\r\nAPLIKASI MUSIK MENGGUNAKAN FLUTTER', 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604'),
(667, '1811081036', 'Ramli', 'Perancangan Metode Lean UX pada Layanan Sistem Informasi \r\nBerbasis Website SMK Mutiara Bangsa Sebatik', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', 'DEFNI, S.Si, M.Kom', '0007128104'),
(668, '1901082021', 'Fanny Laila Safitri', 'PENERAPAN TEKNOLOGI SPARK AR DALAM PENGENALAN SUNTIANG MINANGKABAU', 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', 'FAZROL ROZI, M.Sc.', '0021078601'),
(669, '2011089005', 'Haryuni Azmi', 'SISTEM PENDUKUNG KEPUTUSAN PENILAIAN KINERJA PEGAWAI PEMERINTAH NON PEGAWAI NEGERI (PPNPN) DENGAN METODE MULTI OBJECTIVE OPTIMIZATION ON THE BASIC OF RATIO ANALYSIS (MOORA) DI PENGADILAN TATA USAHA NEGARA PADANG', 'DEFNI, S.Si, M.Kom', '0007128104', 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601'),
(670, '1911082028', 'Alfath Aldenof', 'Implementasi User Experience Pada Aplikasi Pendaftaran Siswa Baru Di SMAN 2 Pasaman Menggunkan Metode Human-Centered Design', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', 'MERI AZMI, S.T, M.Cs', '0029068102'),
(671, '1811081008', 'Meilinda Safitri Effendi', 'PENERAPAN ALGORITMA BOYER MOORE BESERTA FITUR FAQ CHATBOT UNTUK PENCARIAN DATA KELUHAN PENYAKIT\r\n(STUDI KASUS PADA SISTEM INFORMASI PUSKESMAS SINTUAK TOBOH GADANG)\r\n', 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', 'RONAL HADI, S.T, M.Kom', '0029017603'),
(672, '1901081003', 'Lia Febriyusni Audi', 'IMPLEMENTASI TEKNOLOGI WEB UNTUK SISTEM INFORMASI DAN PENDAFTARAN ONLINE PADA TPQ NUR TANJUNG', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', 'HUMAIRA, S.T, M.T', '0019038103'),
(673, '1811082010', 'Rahmat Berlianda Avandi', 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN UANG KULIAH TUNGGAL MAHASISWA POLITEKNIK NEGERI PADANG DENGAN MENGGUNAKAN FUZZY LOGIC METODE TSUKAMOTO', 'RASYIDAH, S.Si, M.M.', '0001067407', 'CIPTO PRABOWO, S.T, M.T', '0002037410');

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
(1, 'super_admin', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(2, 'user', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(3, 'admin', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(4, 'dosen_pengampu', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(5, 'pengurus_kbk', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(6, 'dosen_kbk', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(7, 'pimpinan_prodi', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(8, 'pimpinan_jurusan', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(9, 'pengguna_umum', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(24, 3),
(25, 1),
(26, 1),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(31, 4),
(32, 3),
(33, 3),
(34, 3),
(34, 5),
(34, 7),
(34, 8),
(35, 4),
(35, 5),
(35, 7),
(35, 8),
(36, 5),
(36, 7),
(36, 8),
(37, 4),
(37, 5),
(37, 7),
(37, 8),
(38, 5),
(38, 7),
(38, 8),
(39, 1),
(40, 1),
(41, 1),
(42, 2),
(42, 9),
(43, 4),
(44, 7),
(45, 5),
(46, 8),
(47, 4),
(48, 4),
(49, 5),
(50, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rps`
--

CREATE TABLE `rps` (
  `id_rps` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_dosen_pengembang` int(11) NOT NULL,
  `evaluasi` text DEFAULT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rps`
--

INSERT INTO `rps` (`id_rps`, `id_matakuliah`, `id_tahun_akademik`, `dokumen`, `id_dosen_pengembang`, `evaluasi`, `id_prodi`) VALUES
(78, 24, 3, 'RPS/vraXZlKgBgOAIBvpnjNm6RvVAerczks5Km4y63Ti.pdf', 7, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(79, 25, 3, 'RPS/4fGcjNmhRpnhat1kyU64RpGVvRWelPnoapFJwMwo.pdf', 7, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(80, 26, 3, 'RPS/9ge12RzLIpxVw2nqwwtJ7KreVC08zgdniPg1HUAH.pdf', 7, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(81, 27, 3, 'RPS/DQaf9dhKGD7oCW3JQBpMx7rV445zvkaffrrUNkbA.pdf', 7, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(84, 18, 3, 'RPS/0q3qAtFxR9kT5h2JDWRoJHtMC3imCOvHeRwhLcM3.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(85, 19, 3, 'RPS/jfJjNEVMVhqTHQjnxdLiPPs1XV77WaJwwxaLDVAL.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(86, 20, 3, 'RPS/60QLe98qCjBK9CS8FkVIQve1fA5z0pqChgAR853G.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(87, 21, 3, 'RPS/NxRiyCKwjvnZs3Q390VqFa6jdzVq1T5zXVamY9aN.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(88, 22, 3, 'RPS/cud2oNgSszI327DnlseQLJa20nB2hi0PKEMwLhSC.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(89, 23, 3, 'RPS/Z82ygRyfSrjEqfe3NCGdEjnHazmb8vlYuawQs0Cl.pdf', 155, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(92, 13, 3, 'RPS/ScMENGxSuGyCjpE2mg2UdpSucYx2Mez3DxwBW3BW.pdf', 4, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(93, 14, 3, 'RPS/kfGpMxhm2cKoeXi7xXKmcq9CMV9spb8mmdhvwSfV.pdf', 4, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `smt_thn_akd`
--

CREATE TABLE `smt_thn_akd` (
  `id_smt_thn_akd` int(11) NOT NULL,
  `smt_thn_akd` varchar(30) NOT NULL,
  `status` enum('1','0') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `smt_thn_akd`
--

INSERT INTO `smt_thn_akd` (`id_smt_thn_akd`, `smt_thn_akd`, `status`) VALUES
(1, '2022/2023-Genap', '0'),
(2, '2023/2024-Ganjil', '0'),
(3, '2023/2024-Genap', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `dosen_pengampu` varchar(50) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `evaluasi` text DEFAULT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_matakuliah`, `dosen_pengampu`, `dokumen`, `id_tahun_akademik`, `evaluasi`, `id_prodi`) VALUES
(18, 13, '4', 'SOAL/CQcyfGIZ1MfZ38ikqk8P4JsgYgApHGDkFEue78va.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(19, 14, '4', 'SOAL/1zM9RMWqm7UR3zDATqlpconeVAzhymqwWtnxSUym.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(20, 16, '4', 'SOAL/YPJruz3PbgvouxT96LvMi66XpkjDnAjsAfeYTkxY.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(21, 17, '4', 'SOAL/hbQJV2ccP7JJCJdGh7uTlBOpGgy6gS0P6APGxRzK.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(22, 1, '4', 'SOAL/QDLb5uhWGxynujeQT6T5zpsdqrSutZpl1B1juEuF.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 20),
(23, 15, '4', 'SOAL/v6uHAX6W7k5TLQnU2t3axgCpkCCyqT14h6GUCRqQ.pdf', 3, 'Sudah sesuai dengan jian dan Profil Lulusan prodi', 20),
(24, 24, '7', 'SOAL/jXhRt9GEaEdZY2F67IXqjeVpi5Ed8qW2gDNBqV7s.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(25, 25, '7', 'SOAL/8fsgAzdbdigg6ZVKB3tcM4TKMDunWWRoZKP3sOo8.pdf', 3, 'ai dengan bahan kajian dan Profil Lulusan prodi', 19),
(26, 26, '7', 'SOAL/3EmAoPRq5k2Qyggx1WRKmIVWAAEsYsuipRhQqr2Y.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(27, 27, '7', 'SOAL/jvErSPLmhJKDS3pa1050yWSc4zoVWX6dIlAxFBbC.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19),
(30, 18, '155', 'SOAL/9lKBbumWT41MDdljy8ZeUpCT6KKPvbMKxQ85FQY1.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi.', 18),
(31, 19, '155', 'SOAL/n3WuMllHSd2tFtEgenpZ5OB9ZktQbHzQxQDejAlE.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(32, 20, '155', 'SOAL/7BgE6OGCgZauclhKAzGIDHAOhGahg5noEio6GQdz.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(33, 21, '155', 'SOAL/1tcBoy42vWrIVUWTCtj861CYLLGCKOCPRP6XEPEw.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(34, 22, '155', 'SOAL/3P8OdYkvA03ZA0Rqe8unn3yoN5guLIjZP4RACGxM.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(35, 23, '155', 'SOAL/OkfyCaFWJvAPF7Vg9qTTtbhAXCLKhVBnyj8jQ6co.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 18),
(36, 28, '7', 'SOAL/txVbPSgktMEoZdyh2fucBD8CfF10e9es6KeFvQ9m.pdf', 3, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '12345678',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nidn`, `name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, '0019038103', 'admin', 'admin@gmail.com', '$2y$12$G/.uSnMI6RPGUiE5kmzvQ.plZ/XryarKqhM.ZqFUN9fZqt8Z5/u4a', 'Image/5E6cgACC4CCDsiDcrZZs4AD2LQhCBXc7hY84Uo6i.png', '2024-06-16 10:07:12', '2024-06-27 00:04:20'),
(2, '0025088802', 'ALDE ALANDA', 'penguruskbk@gmail.com', '$2y$12$ryZGSsZwFym1gslMLoQriuHYzV07Qy16vrU4qCj8glfsIvzUPQ/XC', 'Image/NnSmdTeslOBDzQNLhBDM6xTtGt56xjgqz3BLZhTl.png', '2024-06-16 10:07:12', '2024-07-06 18:10:18'),
(3, '0029068102', 'kaprodi', 'kaprodi@gmail.com', '$2y$12$aDNXItkuZgGnekucJCSvyuGQFAYrvxRyhJXO1H03ioiCy08WYrwp6', NULL, '2024-06-16 10:07:12', '2024-07-07 07:13:44'),
(4, '0218068801', 'dosen', 'dosen@gmail.com', '$2y$12$xiP3j2EQ2z2SGwxNNnbWbe.5GnbovDOr9orjV8ulGlUx5yCMFSWbe', NULL, '2024-06-16 10:07:13', '2024-06-28 09:59:16'),
(5, '0029017603', 'kajur', 'kajur@gmail.com', '$2y$12$oZsrFjUJ/MhyST7cW/ncJON6mhDltol8L4sU4zCQgHPg24l.rC0Te', NULL, '2024-06-26 15:33:15', '2024-06-26 15:33:15'),
(7, '0021078601', 'FAZROL ROZI', 'fazrol@pnp.ac.id', '$2y$12$9o54b4nOm9obgpYyKX.GtuTzgBO14noDIIpzcQ8skMzBOHNUwfYSW', NULL, '2024-06-19 05:04:31', '2024-06-21 21:08:50'),
(99, '0020028804', 'Super Admin', 'superadmin@gmail.com', '$2y$12$B5Qr4LcLHn8SyMW.Uc27y.IfEAF0KRINxqOHfaP2LVURTXrtYfV6q', 'Image/DV24yS9lv0vSQIehA9C2q0b2RLD61bdEfwquGAKh.png', '2024-06-18 07:42:11', '2024-06-26 19:44:51'),
(155, '0001067407', 'RASYIDAH', 'rasyidah@pnp.ac.id', '$2y$12$CujWX.cYq9ld5bfj0k0/VO2ypdJ3Hfqn1wh1nwqVz7FxUJ2Js6H82', NULL, NULL, NULL),
(156, '0022078607', 'RONI PUTRA', 'rn.putra@gmail.com', '$2y$12$uSFmq/EG6qChXNthUlhEpOxPXW6xV8H9I.Y1UAPKmZFyR5RxI2lqG', NULL, NULL, NULL),
(166, '0015048105', 'Muhammad Amir Shafwan', 'kakekmekar@gmail.com', '$2y$12$wnaPX6Y1vsQkORV34Mt8fuXxFIO01vMfefgGd7Sc6lXujtDV8tCGK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_rps`
--

CREATE TABLE `verifikasi_rps` (
  `id_verif_rps` int(11) NOT NULL,
  `id_rps` int(11) DEFAULT NULL,
  `evaluasi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verifikasi_rps`
--

INSERT INTO `verifikasi_rps` (`id_verif_rps`, `id_rps`, `evaluasi`, `tanggal`) VALUES
(50, 78, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(51, 79, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(52, 80, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(53, 81, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(56, 84, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(57, 85, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(58, 86, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(59, 87, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-05'),
(60, 88, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(61, 89, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(64, 92, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(65, 93, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_soal`
--

CREATE TABLE `verifikasi_soal` (
  `id_verif_soal` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `evaluasi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verifikasi_soal`
--

INSERT INTO `verifikasi_soal` (`id_verif_soal`, `id_soal`, `evaluasi`, `tanggal`) VALUES
(17, 18, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(18, 19, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(19, 20, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(20, 21, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(21, 22, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(22, 23, 'Sudah sesuai dengan jian dan Profil Lulusan prodi', '2024-07-08'),
(23, 24, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(24, 25, 'ai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(25, 26, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(26, 27, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(29, 30, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi.', '2024-07-08'),
(30, 31, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(31, 32, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-06'),
(32, 33, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(33, 34, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(34, 35, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-08'),
(35, 36, 'Sudah sesuai dengan bahan kajian dan Profil Lulusan prodi', '2024-07-10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `change_logs`
--
ALTER TABLE `change_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `dosen_kbk`
--
ALTER TABLE `dosen_kbk`
  ADD PRIMARY KEY (`id_dosenkbk`),
  ADD KEY `fk_jabatan_kbk` (`id_jabatan_kbk`),
  ADD KEY `fk_kbk` (`id_kbk`),
  ADD KEY `fk_dosenkbk_nidn` (`nidn`);

--
-- Indeks untuk tabel `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  ADD PRIMARY KEY (`id_dosen_matakuliah`),
  ADD KEY `fk_dosen_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `jabatan_kbk`
--
ALTER TABLE `jabatan_kbk`
  ADD PRIMARY KEY (`id_jabatan_kbk`);

--
-- Indeks untuk tabel `jabatan_pimpinan`
--
ALTER TABLE `jabatan_pimpinan`
  ADD PRIMARY KEY (`id_jabatan_pimpinan`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kbk`
--
ALTER TABLE `kbk`
  ADD PRIMARY KEY (`id_kbk`),
  ADD KEY `fk_kbk_ketua` (`ketua_kbk`),
  ADD KEY `fk_kbk_sekretaris` (`sekretaris_kbk`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`),
  ADD KEY `fk_kurikulum_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nobp` (`nim`),
  ADD KEY `fk_mahasiswa_prodi` (`kode_jurusan`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`),
  ADD KEY `fk_matakuliah_kurikulum` (`id_kurikulum`);

--
-- Indeks untuk tabel `matakuliah_kbk`
--
ALTER TABLE `matakuliah_kbk`
  ADD PRIMARY KEY (`id_matakuliahkbk`),
  ADD KEY `fk_matakuliah_kbk` (`id_matakuliah`),
  ADD KEY `fk_id_kbk` (`id_kbk`);

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
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indeks untuk tabel `pimpinan_jurusan`
--
ALTER TABLE `pimpinan_jurusan`
  ADD PRIMARY KEY (`id_pimpinan_jurusan`),
  ADD KEY `fk_pimpinan_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `pimpinan_prodi`
--
ALTER TABLE `pimpinan_prodi`
  ADD PRIMARY KEY (`id_pimpinan_prodi`),
  ADD KEY `fk_jabatan_prodi` (`id_jabatan`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `jenjang_fk` (`id_jenjang`);

--
-- Indeks untuk tabel `proposal_ta`
--
ALTER TABLE `proposal_ta`
  ADD PRIMARY KEY (`id_proposal_ta`),
  ADD KEY `fk_pembimbing1_nidn` (`pembimbing_satu_nidn`),
  ADD KEY `fk_pembimbing2_nidn` (`pembimbing_dua_nidn`),
  ADD KEY `fk_nim_mahasiswa` (`nim`);

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
-- Indeks untuk tabel `rps`
--
ALTER TABLE `rps`
  ADD PRIMARY KEY (`id_rps`),
  ADD KEY `fk_pengembng_rps` (`id_dosen_pengembang`),
  ADD KEY `fk_rps_matakuliah` (`id_matakuliah`),
  ADD KEY `fk_rps_tahun_akademik` (`id_tahun_akademik`);

--
-- Indeks untuk tabel `smt_thn_akd`
--
ALTER TABLE `smt_thn_akd`
  ADD PRIMARY KEY (`id_smt_thn_akd`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `fk_soal_matakuliah` (`id_matakuliah`) USING BTREE,
  ADD KEY `fk_soal_tahun` (`id_tahun_akademik`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_nidn_index` (`nidn`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `dosen_kbk`
--
ALTER TABLE `dosen_kbk`
  MODIFY `id_dosenkbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  MODIFY `id_dosen_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `jabatan_kbk`
--
ALTER TABLE `jabatan_kbk`
  MODIFY `id_jabatan_kbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kbk`
--
ALTER TABLE `kbk`
  MODIFY `id_kbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `matakuliah_kbk`
--
ALTER TABLE `matakuliah_kbk`
  MODIFY `id_matakuliahkbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `pimpinan_jurusan`
--
ALTER TABLE `pimpinan_jurusan`
  MODIFY `id_pimpinan_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pimpinan_prodi`
--
ALTER TABLE `pimpinan_prodi`
  MODIFY `id_pimpinan_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `proposal_ta`
--
ALTER TABLE `proposal_ta`
  MODIFY `id_proposal_ta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `rps`
--
ALTER TABLE `rps`
  MODIFY `id_rps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `smt_thn_akd`
--
ALTER TABLE `smt_thn_akd`
  MODIFY `id_smt_thn_akd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  MODIFY `id_verif_rps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  MODIFY `id_verif_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `change_logs`
--
ALTER TABLE `change_logs`
  ADD CONSTRAINT `change_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dosen_kbk`
--
ALTER TABLE `dosen_kbk`
  ADD CONSTRAINT `fk_dosenkbk_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `kbk` (`id_kbk`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dosenkbk_nidn` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jabatan_kbk` FOREIGN KEY (`id_jabatan_kbk`) REFERENCES `jabatan_kbk` (`id_jabatan_kbk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  ADD CONSTRAINT `fk_dosen_matakuliah` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kbk`
--
ALTER TABLE `kbk`
  ADD CONSTRAINT `fk_kbk_ketua` FOREIGN KEY (`ketua_kbk`) REFERENCES `dosen_kbk` (`id_dosenkbk`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kbk_sekretaris` FOREIGN KEY (`sekretaris_kbk`) REFERENCES `dosen_kbk` (`id_dosenkbk`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD CONSTRAINT `fk_kurikulum_prodi` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `fk_matakuliah_kurikulum` FOREIGN KEY (`id_kurikulum`) REFERENCES `kurikulum` (`id_kurikulum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matakuliah_kbk`
--
ALTER TABLE `matakuliah_kbk`
  ADD CONSTRAINT `fk_id_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `kbk` (`id_kbk`),
  ADD CONSTRAINT `fk_matakuliah_kbk` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`);

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
-- Ketidakleluasaan untuk tabel `pimpinan_jurusan`
--
ALTER TABLE `pimpinan_jurusan`
  ADD CONSTRAINT `fk_pimpinan_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pimpinan_prodi`
--
ALTER TABLE `pimpinan_prodi`
  ADD CONSTRAINT `fk_jabatan_prodi` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_pimpinan` (`id_jabatan_pimpinan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_ta`
--
ALTER TABLE `proposal_ta`
  ADD CONSTRAINT `fk_nim_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pembimbing1_nidn` FOREIGN KEY (`pembimbing_satu_nidn`) REFERENCES `dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pembimbing2_nidn` FOREIGN KEY (`pembimbing_dua_nidn`) REFERENCES `dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rps`
--
ALTER TABLE `rps`
  ADD CONSTRAINT `fk_rps_matakuliah` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rps_tahun_akademik` FOREIGN KEY (`id_tahun_akademik`) REFERENCES `smt_thn_akd` (`id_smt_thn_akd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_matakuliah` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_soal_tahun` FOREIGN KEY (`id_tahun_akademik`) REFERENCES `smt_thn_akd` (`id_smt_thn_akd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_nidn` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD CONSTRAINT `fk_verif_rps` FOREIGN KEY (`id_rps`) REFERENCES `rps` (`id_rps`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD CONSTRAINT `fk_verif_soal` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id_soal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
