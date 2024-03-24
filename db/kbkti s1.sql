-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2024 pada 18.45
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
-- Database: `kbkti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang_keahlian`
--

CREATE TABLE `bidang_keahlian` (
  `id` int(20) NOT NULL,
  `bidang_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bidang_keahlian`
--

INSERT INTO `bidang_keahlian` (`id`, `bidang_keahlian`) VALUES
(0, ' '),
(1, 'SOFTAM'),
(2, 'CAIT'),
(3, 'Programming'),
(4, 'NCS'),
(5, 'Multimedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `id_prodi` int(20) NOT NULL,
  `id_bidang` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `name`, `nidn`, `nip`, `gender`, `id_prodi`, `id_bidang`, `email`, `image`, `status`) VALUES
(13, 'ALDE ALANDA, S.Kom, M.T', '0025088802', '198808252015041002', 'Laki-laki', 19, 0, 'alde@pnp.ac.id', '', 1),
(14, 'ALDO ERIANDA, M.T, S.ST', '003078904', '198907032019031015', 'Laki-laki', 18, 0, 'aldo@pnp.ac.id', '', 1),
(40, 'CIPTO PRABOWO, S.T, M.T', '0002037410', '197403022008121001', 'Laki-laki', 19, 0, 'cipto@pnp.ac.id', 'fac231b8a829e7d730931228d72011b1.jpg', 1),
(46, 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', '198104152006041002', 'Laki-laki', 19, 0, 'deddy@pnp.ac.id', '4fa060ef27985838eb293d99da52efb2.jpeg', 1),
(50, 'DEFNI, S.Si, M.Kom', '0007128104', '198112072008122001', 'Perempuan', 18, 0, 'defni@pnp.ac.id', 'd864890c6bb076a318c06825005cae8d.jpg', 1),
(52, 'DENI SATRIA, S.Kom, M.Kom', '0028097803', '197809282008121002', 'Laki-laki', 18, 0, 'dns1st@gmail.com', '55c4fc824b98c03c6c4433c3b1e86d45.jpg', 1),
(66, 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', '198605092014042001', 'Perempuan', 20, 0, 'dwinymeidelfi@pnp.ac.id', '', 1),
(85, 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', '197809012008121001', 'Laki-laki', 18, 0, 'ervan@pnp.ac.id', '', 1),
(91, 'FAZROL ROZI, M.Sc.', '0021078601', '19860721201012006', 'Laki-laki', 19, 0, 'fazrol@pnp.ac.id', 'c01a268923bad997d5fd32b91f7dd70c.jpg', 1),
(103, 'FITRI NOVA, M.T, S.ST', '1029058502', '198505292014042001', 'Perempuan', 19, 0, 'fitrinova85@gmail.com', '', 1),
(109, 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', '196605101994031003', 'Laki-laki', 19, 0, 'mooduto@pnp.ac.id', 'b3ad9efee85368414b8028cd8374f23b.jpg', 1),
(121, 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', '198204152012121002', 'Laki-laki', 18, 0, 'hidra@pnp.ac.id', '71969dd34b719324a67cf5c2f2dcc23d.jpg', 1),
(122, 'HUMAIRA, S.T, M.T', '0019038103', '198103192006042002', 'Perempuan', 20, 0, 'humaira@pnp.ac.id', 'de0d94dc972a2c1d82affa030b024cfe.png', 1),
(127, 'IKHSAN YUSDA PRIMA PUTRA, S.H., LL.M', '0001107505', '197510012006041002', 'Laki-laki', 19, 0, 'ikhsan_yusda@yahoo.com', '', 1),
(132, 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', '198306252008012004', 'Perempuan', 20, 0, 'indri@pnp.ac.id', '3b3b5b311bbf329ff9816431eeb7a736.jpg', 1),
(160, 'MERI AZMI, S.T, M.Cs', '0029068102', '198106292006042001', 'Perempuan', 18, 0, 'meriazmi@gmail.com', '9d007a42b662278a64d733739369e466.jpg', 1),
(198, 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', '197804152000121002', 'Laki-laki', 20, 0, 'rahmat@pnp.ac.id', '25882a9736335a9d74afb9d8b7166694.jpg', 1),
(206, 'RASYIDAH, S.Si, M.M.', '0001067407', '197406012006042001', 'Perempuan', 18, 0, 'rasyidah@pnp.ac.id', '2c01adfd7d935c8ad94e43a30bd58630.jpg', 1),
(212, 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', '197801222009122002', 'Perempuan', 20, 0, 'rikaidmayanti@pnp.ac.id', '', 1),
(220, 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', '197007182008012010', 'Perempuan', 18, 0, 'ritaafyenni@pnp.ac.id', 'cb6177274299747739a5ec8b82a7996e.jpg', 1),
(223, 'RONAL HADI, S.T, M.Kom', '0029017603', '197601292002121001', 'Laki-laki', 19, 0, 'ronalhadi@pnp.ac.id', '82701602ab2345fba65799deabc6465e.jpg', 1),
(258, 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', ' 19880810 201903 1 012', 'Laki-laki', 18, 0, 'taufikgusman@gmail.com', '', 1),
(277, 'YANCE SONATHA, S.Kom, M.T', '0029128003', '198012292006042001', 'Perempuan', 18, 0, 'sonatha.yance@gmail.com', 'ad21784c0d96ee45d915486f5034e93f.JPG', 1),
(289, 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', '197601132006041002', 'Laki-laki', 18, 0, 'yuhefizar@pnp.ac.id', '09ce456b8d8e7aeb7826d39e2e807f47.jpg', 1),
(292, 'YULHERNIWATI, S.Kom, M.T', '0019077609', '197607192008012017', 'Perempuan', 20, 0, 'yulherniwati@pnp.ac.id', '', 1),
(310, 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205', '199203052019032025', 'Perempuan', 18, 0, 'trilestari0503@gmail.com', '', 1),
(311, 'Fanni Sukma, S.ST., M.T', '0006069009', '199006062019032026', 'Perempuan', 20, 0, 'fannisukma@pnp.ac.id', '', 1),
(312, 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', '198802202019031009', 'Laki-laki', 20, 0, 'andrefebrian@pnp.ac.id', '', 1),
(351, 'RONI PUTRA, S.Kom, M.T ', '0022078607', '198607222009121004', 'Laki-laki', 18, 0, 'rn.putra@gmail.com', '84c314601260564ac3c6f027806898ce.jpg', 1),
(352, 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', '19890529 202012 1 003', 'Laki-laki', 19, 0, 'ardi.syawaldipa@gmail.com', '5ce5dcfbea617cd2647bb40ac674787a.jpg', 1),
(353, 'Harfebi Fryonanda, S.Kom., M.Kom', '0310119101', '19911110 202203 1 008', 'Laki-laki', 20, 0, 'harfebi@pnp.ac.id', '', 1),
(354, 'Ideva Gaputra, S.Kom., M.Kom', '0012098808', '198809122022031006', 'Laki-laki', 19, 0, 'idevagaputra@pnp.ac.id', '', 1),
(355, 'Yulia Jihan Sy, S.Kom., M.Kom', '1017078904', '19890717 202203 2 010', 'Perempuan', 19, 0, 'yulia@pnp.ac.id', '', 1),
(356, 'Andrew Kurniawan Vadreas, S.Kom., M.T	', '1021028702', '19870221 202203 1 001', 'Laki-laki', 18, 0, 'andrew@pnp.ac.id', '4f7699576c1ba641216407178bcf495f.jpg', 1),
(357, 'YORI ADI ATMA, S.Pd., M.Kom', '2010059001', '19900510 202203 1 002', 'Laki-laki', 18, 0, 'yori@pnp.ac.id', '', 1),
(358, 'Dr. Ulya Ilhami Arsyah, S.Kom., M.Kom', '0130039101', '19910330 202203 1 004', 'Laki-laki', 20, 0, 'ulya@pnp.ac.id', 'a59e301291dc0faa739038d98a227573.jpg', 1),
(359, 'Hendra Rotama, S.Pd., M.Sn', '0218068801', '19880618 202203 1 003', 'Laki-laki', 19, 0, 'hendrarotama@pnp.ac.id', '', 1),
(360, 'Sumema, S.Ds., M.Ds', '0008069103', '19910608 202203 2 006', 'Perempuan', 19, 0, 'sumema@pnp.ac.id', 'e1942d441a62daa7e806333f86d80847.jpg', 1),
(361, 'Raemon Syaljumairi, S.Kom., M.Kom', '0017078407', '19840717 201012 1 002', 'Laki-laki', 19, 0, 'raemon_syaljumairi@pnp.ac.id', '4e64aa532551a9591dc03f7b0d42bcee.jpg', 1),
(362, 'Mutia Rahmi Dewi, S.Kom., M.Kom', '0004099601', '19960904 202203 2 018', 'Perempuan', 20, 0, 'mutiarahmi@pnp.ac.id', '2b21f8c49d10f534b8792d0d7f4a7607.jpg', 1),
(363, 'Novi, S.Kom., M.T', '0001118611', '19861101 202203 2 003', 'Perempuan', 19, 0, 'novi@pnp.ac.id', '', 1),
(364, 'Rahmi Putri Kurnia, S.Kom., M.Kom', '0027089303', '19930827 202203 2 012', 'Perempuan', 19, 0, 'rahmiputri@pnp.ac.id', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(20) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `kode_jurusan`, `jurusan`) VALUES
(1, 'AN', 'Administrasi Niaga'),
(2, 'AK', 'Akuntansi'),
(3, 'BI', 'Bahasa Inggris'),
(4, 'EE', 'Teknik Elektro'),
(5, 'ME', 'Teknik Mesin'),
(6, 'SP', 'Teknik Sipil'),
(7, 'TI', 'Teknologi Informasi'),
(10, 'ME', 'Mesin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(20) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'kbk'),
(3, 'kaprodi'),
(4, 'dosen'),
(5, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id` int(20) NOT NULL,
  `matkul` varchar(100) NOT NULL,
  `id_bidang` int(20) NOT NULL,
  `id_dosen` int(20) NOT NULL,
  `id_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id`, `matkul`, `id_bidang`, `id_dosen`, `id_tahun`) VALUES
(1, 'Struktur Data', 3, 132, 1),
(2, 'Sistem Basis Data', 3, 277, 2),
(3, 'Komputasi Awan', 2, 13, 2),
(4, 'Multimedia', 5, 360, 3),
(5, 'Administrasi Jaringan dan Server', 4, 121, 1),
(6, 'Internet of Things', 1, 40, 3);

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
(66, '2024_03_21_174432_add_foreign_keys_to_verifikasi_soal_table', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus_kbk`
--

CREATE TABLE `pengurus_kbk` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_bidang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(20) NOT NULL,
  `kode_prodi` varchar(10) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `id_jurusan` int(20) NOT NULL DEFAULT 7,
  `jenjang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `kode_prodi`, `prodi`, `id_jurusan`, `jenjang`) VALUES
(18, '3MI', 'Manajemen Informatika D-3', 7, 'D3'),
(19, '3TK', 'Teknik Komputer D-3', 7, 'D3'),
(20, '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 7, 'D4'),
(21, '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', 7, 'D3'),
(22, '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', 7, 'D3'),
(23, '3MI-P', 'Manajemen Informatika (Pelalawan)', 7, 'D4'),
(33, '4AM', 'Animasi', 7, 'D4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rps`
--

CREATE TABLE `rps` (
  `id` int(20) NOT NULL,
  `id_matkul` int(20) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(20) NOT NULL,
  `id_matkul` int(20) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(20) NOT NULL,
  `thn_ajaran` varchar(30) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `thn_ajaran`, `status`) VALUES
(1, '2022/2023-Genap', 0),
(2, '2023/2024-Ganjil', 0),
(3, '2023/2024-Genap', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_level` int(20) NOT NULL DEFAULT 5,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `id_level`, `updated_at`, `create_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$aid1ewNU.l4q7U88I4wxTesGf5BuLNucSKBwDtbmlPepAmdH1MR.K', 1, NULL, NULL),
(2, 'kbk', 'kbk@gmail.com', '$2y$12$G5ERF.vNHHsWAO70pmp1b.gS38/AID1u11ivMaHPuud0pdhthes/K', 2, NULL, NULL),
(3, 'kaprodi', 'kaprodi@gmail.com', '$2y$12$mjpUPkfBZ7.3iHe7mi0A9O65ZmfpwOoGwi3QuvOkb2lPyHTHL3h2O', 3, NULL, NULL),
(4, 'dosen', 'dosen@gmail.com', '$2y$12$eaLIdhLSw2j52CXVKepH9.OQFKV08FVdsIwACozppdZgRvKyn6SBq', 4, NULL, NULL),
(5, 'user', 'user@gmail.com', '$2y$12$695K53NiupeEZTVJxe/.3.EmQkfJIlcSWPI/C4sR0sfS/iAIpay0O', 5, NULL, NULL),
(11, 'Muhammad Amir Shafwan', 'muhammadamirshafwan69@gmail.com', '$2y$12$w6raCItMaCMiXVKWFhNO2utI5nhmEWnAVPam03hZNiNAVEMyjGyw6', 1, NULL, NULL),
(60, 'Muhammad Amir Shafwan', 'admin4@gmail.com', '$2y$12$heHmLWAVbIoXdaEtYf2ky.koUuL/gqQmpT1Z4fLQRtE1vvF.AmhTi', 1, NULL, NULL),
(62, 'amirr', 'mir@gmail.com', '$2y$12$XDLb0NdpgTbKJB7xRHN/1eCTxAH0RBTPx9n3aLDvqiR.meACNSRAG', 5, NULL, NULL),
(63, 'amirrr', 'aamir@gmail.com', '$2y$12$tJClOiPbfCi7CtKGYXtiTe6E2GXopayGv42xPBAUTNbw7fnM9DsT6', 4, NULL, NULL),
(64, 'okoc', 'aamiir@gmail.com', '$2y$12$KUpx5qIR3YCFj284Qo0KOO9Gy8YtguKaWOUMFMC7tgkvZ.XRaCAJS', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_rps`
--

CREATE TABLE `verifikasi_rps` (
  `id` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_pengurus` int(20) NOT NULL,
  `id_rps` int(20) NOT NULL,
  `id_tahun` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_soal`
--

CREATE TABLE `verifikasi_soal` (
  `id` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_pengurus` int(20) NOT NULL,
  `id_soal` int(20) NOT NULL,
  `id_tahun` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang_keahlian`
--
ALTER TABLE `bidang_keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dosen_prodi` (`id_prodi`) USING BTREE,
  ADD KEY `fk_dosen_bidang` (`id_bidang`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_matkul_dosen` (`id_dosen`),
  ADD KEY `fk_matkul_bidang` (`id_bidang`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengurus_kbk`
--
ALTER TABLE `pengurus_kbk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengurus_bidang` (`id_bidang`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prodi_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `rps`
--
ALTER TABLE `rps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rps_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_soal_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_level` (`id_level`) USING BTREE;

--
-- Indeks untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vrps_tahun` (`id_tahun`),
  ADD KEY `fk_vrps_rps` (`id_rps`),
  ADD KEY `fk_vrps_pengurus` (`id_pengurus`);

--
-- Indeks untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vsoal_tahun` (`id_tahun`),
  ADD KEY `fk_vsoal_soal` (`id_soal`),
  ADD KEY `fk_vsoal_pengurus` (`id_pengurus`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bidang_keahlian`
--
ALTER TABLE `bidang_keahlian`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `pengurus_kbk`
--
ALTER TABLE `pengurus_kbk`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `rps`
--
ALTER TABLE `rps`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `fk_dosen_bidang` FOREIGN KEY (`id_bidang`) REFERENCES `bidang_keahlian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dosen_prodi` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `fk_matkul_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`id_bidang`) REFERENCES `bidang_keahlian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengurus_kbk`
--
ALTER TABLE `pengurus_kbk`
  ADD CONSTRAINT `fk_pengurus_bidang` FOREIGN KEY (`id_bidang`) REFERENCES `bidang_keahlian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `fk_prodi_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rps`
--
ALTER TABLE `rps`
  ADD CONSTRAINT `fk_rps_matkul` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_matkul` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_level` FOREIGN KEY (`id_level`) REFERENCES `level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD CONSTRAINT `fk_vrps_pengurus` FOREIGN KEY (`id_pengurus`) REFERENCES `pengurus_kbk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vrps_rps` FOREIGN KEY (`id_rps`) REFERENCES `rps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vrps_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD CONSTRAINT `fk_vsoal_pengurus` FOREIGN KEY (`id_pengurus`) REFERENCES `pengurus_kbk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vsoal_soal` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vsoal_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
