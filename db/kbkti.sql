-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2024 pada 17.51
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
(91, '2024_03_24_081035_add_foreign_keys_to_verifikasi_soal_table', 0);

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
  `id_dosen` int(11) NOT NULL,
  `id_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_dosen_kbk`
--

INSERT INTO `ref_dosen_kbk` (`id_dosenkbk`, `id_dosen`, `id_kbk`) VALUES
(1, 132, 5),
(2, 160, 3),
(3, 14, 1),
(4, 40, 2),
(5, 311, 4),
(6, 357, 5);

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
(1, 'AN', 'Administrasi Niaga'),
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
  `id_kbk` int(20) NOT NULL,
  `nama_kbk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_kbk`
--

INSERT INTO `ref_kbk` (`id_kbk`, `nama_kbk`) VALUES
(1, 'SOFTAM'),
(2, 'CAIT'),
(3, 'Programming'),
(4, 'NCS'),
(5, 'Multimedia');

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
  `id` int(20) NOT NULL,
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
(14, 'RPL3203', 'Basis Data', 'P', 2, 2, 3, 2, 2, 2, 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_matakuliah_kbk`
--

CREATE TABLE `ref_matakuliah_kbk` (
  `id_matakuliahkbk` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_matakuliah_kbk`
--

INSERT INTO `ref_matakuliah_kbk` (`id_matakuliahkbk`, `id_matakuliah`, `id_kbk`) VALUES
(15, 13, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pengurus_kbk`
--

CREATE TABLE `ref_pengurus_kbk` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_bidang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Struktur dari tabel `ref_rps`
--

CREATE TABLE `ref_rps` (
  `id_rps` int(20) NOT NULL,
  `id_matkul` int(20) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(3, '2023/2024-Genap', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_soal`
--

CREATE TABLE `ref_soal` (
  `id` int(20) NOT NULL,
  `id_matkul` int(20) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(63, 'ami', 'aamir@gmail.com', '$2y$12$/7L4euwT6k4K65eOt565Eev/up3sW/AVHaOYRBWmwVtZ0eWJoAFr2', 4, NULL, NULL),
(65, 'Muhammad Amir Shafwan', 'muhammadamirshafwan9@gmail.com', '$2y$12$hT/66QwEjlZDaoAHatAWpOD9IJzuYjGUEDFQS6OCmjbo.uhleL6j2', 1, NULL, NULL),
(66, 'Muhammad Amir Shafwan', 'aamir888@gmail.com', '$2y$12$wqayXyXVFDxmfwXv2KSH/OuJSWckF/nv2.oNsyHNxYZE/9Ux2gPPW', 1, NULL, NULL);

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
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `fk_dosen_id` (`id_dosen`),
  ADD KEY `fk_kbk` (`id_kbk`);

--
-- Indeks untuk tabel `ref_dosen_matakuliah`
--
ALTER TABLE `ref_dosen_matakuliah`
  ADD PRIMARY KEY (`id_dosen_matakuliah`);

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
  ADD PRIMARY KEY (`id_kbk`);

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
  ADD KEY `fk_id_kbk` (`id_kbk`);

--
-- Indeks untuk tabel `ref_pengurus_kbk`
--
ALTER TABLE `ref_pengurus_kbk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengurus_bidang` (`id_bidang`);

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
-- Indeks untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  ADD PRIMARY KEY (`id_rps`),
  ADD KEY `fk_rps_matkul` (`id_matkul`);

--
-- Indeks untuk tabel `ref_smt_thn_akd`
--
ALTER TABLE `ref_smt_thn_akd`
  ADD PRIMARY KEY (`id_smt_thn_akd`);

--
-- Indeks untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_soal_matkul` (`id_matkul`);

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
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `ref_dosen`
--
ALTER TABLE `ref_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

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
-- AUTO_INCREMENT untuk tabel `ref_jurusan`
--
ALTER TABLE `ref_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ref_kbk`
--
ALTER TABLE `ref_kbk`
  MODIFY `id_kbk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ref_matakuliah`
--
ALTER TABLE `ref_matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `ref_matakuliah_kbk`
--
ALTER TABLE `ref_matakuliah_kbk`
  MODIFY `id_matakuliahkbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `ref_pengurus_kbk`
--
ALTER TABLE `ref_pengurus_kbk`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  MODIFY `id_rps` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ref_smt_thn_akd`
--
ALTER TABLE `ref_smt_thn_akd`
  MODIFY `id_smt_thn_akd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
-- Ketidakleluasaan untuk tabel `ref_dosen_kbk`
--
ALTER TABLE `ref_dosen_kbk`
  ADD CONSTRAINT `fk_dosen_id` FOREIGN KEY (`id_dosen`) REFERENCES `ref_dosen` (`id_dosen`),
  ADD CONSTRAINT `fk_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `ref_kbk` (`id_kbk`);

--
-- Ketidakleluasaan untuk tabel `ref_matakuliah_kbk`
--
ALTER TABLE `ref_matakuliah_kbk`
  ADD CONSTRAINT `fk_id_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `ref_kbk` (`id_kbk`),
  ADD CONSTRAINT `fk_matakuliah_kbk` FOREIGN KEY (`id_matakuliah`) REFERENCES `ref_matakuliah` (`id_matakuliah`);

--
-- Ketidakleluasaan untuk tabel `ref_pengurus_kbk`
--
ALTER TABLE `ref_pengurus_kbk`
  ADD CONSTRAINT `fk_pengurus_bidang` FOREIGN KEY (`id_bidang`) REFERENCES `ref_kbk` (`id_kbk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  ADD CONSTRAINT `fk_rps_matkul` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  ADD CONSTRAINT `fk_soal_matkul` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_level` FOREIGN KEY (`id_level`) REFERENCES `ref_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD CONSTRAINT `fk_vrps_pengurus` FOREIGN KEY (`id_pengurus`) REFERENCES `ref_pengurus_kbk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vrps_rps` FOREIGN KEY (`id_rps`) REFERENCES `ref_rps` (`id_rps`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vrps_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD CONSTRAINT `fk_vsoal_pengurus` FOREIGN KEY (`id_pengurus`) REFERENCES `ref_pengurus_kbk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vsoal_soal` FOREIGN KEY (`id_soal`) REFERENCES `ref_soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vsoal_tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
