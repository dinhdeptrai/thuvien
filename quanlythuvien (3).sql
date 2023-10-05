-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2023 lúc 07:22 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythuvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_phieu_nhaps`
--

CREATE TABLE `chi_tiet_phieu_nhaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_phieunhap` bigint(20) UNSIGNED NOT NULL,
  `id_sach` bigint(20) UNSIGNED NOT NULL,
  `id_nhacungcap` bigint(20) UNSIGNED NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_sach_muon_tras`
--

CREATE TABLE `chi_tiet_sach_muon_tras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sachmuontra` bigint(20) UNSIGNED NOT NULL,
  `tensach` varchar(200) NOT NULL,
  `anh` varchar(200) NOT NULL,
  `dongia` double(10,2) NOT NULL,
  `soluongmuon` int(11) NOT NULL,
  `ngaymuon` date NOT NULL,
  `ngaytra` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_sach_muon_tras`
--

INSERT INTO `chi_tiet_sach_muon_tras` (`id`, `id_sachmuontra`, `tensach`, `anh`, `dongia`, `soluongmuon`, `ngaymuon`, `ngaytra`, `created_at`, `updated_at`) VALUES
(23, 24, 'Ngữ văn 12', 'nv12.jpg', 4632.00, 1, '2023-10-05', '2023-10-06', '2023-10-05 04:32:07', '2023-10-05 04:32:07'),
(24, 25, 'Địa lí 12', 'dl12.jpg', 1268.00, 1, '2023-10-05', '2023-10-06', '2023-10-05 04:32:07', '2023-10-05 04:32:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cttrasach`
--

CREATE TABLE `cttrasach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tra` bigint(20) UNSIGNED NOT NULL,
  `songayquahan` int(20) NOT NULL DEFAULT 0,
  `tinhtrangphieumuon` varchar(200) NOT NULL,
  `tienphat` float(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cttrasach`
--

INSERT INTO `cttrasach` (`id`, `id_tra`, `songayquahan`, `tinhtrangphieumuon`, `tienphat`, `created_at`, `updated_at`) VALUES
(55, 130, 1, 'Quá hạn', 19264.00, '2023-10-05 04:32:34', '2023-10-05 04:32:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `khoas`
--

CREATE TABLE `khoas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenkhoa` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoas`
--

INSERT INTO `khoas` (`id`, `tenkhoa`, `created_at`, `updated_at`) VALUES
(1, 'quos', '2023-08-21 19:00:54', '2023-08-21 19:00:54'),
(2, 'optio', '2023-08-21 19:00:54', '2023-08-21 19:00:54'),
(3, 'iure', '2023-08-21 19:00:54', '2023-08-21 19:00:54'),
(4, 'in', '2023-08-21 19:00:54', '2023-08-21 19:00:54'),
(5, 'vt', '2023-08-21 19:00:54', '2023-08-21 19:00:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `email`, `name`, `message`, `created_at`, `updated_at`) VALUES
(2, 'hellovinhne@gmail.com', 'Quang Vinh Hà', 'aaaavvvv', '2023-09-21 20:19:16', '2023-09-21 20:19:16'),
(3, 'hellovinhne@gmail.com', 'Quang Vinh Hà', 'aaaaaaaaaaaa', '2023-09-21 20:20:04', '2023-09-21 20:20:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisaches`
--

CREATE TABLE `loaisaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenloai` varchar(300) NOT NULL,
  `mota` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisaches`
--

INSERT INTO `loaisaches` (`id`, `tenloai`, `mota`, `created_at`, `updated_at`) VALUES
(2, 'Sách giáo khoa', 'Sách giáo khoa ', '2023-08-25 01:16:49', '2023-08-25 01:16:49'),
(3, 'Công nghệ', 'Công nghệ thông tin ', '2023-08-25 01:16:49', '2023-08-25 01:16:49'),
(4, 'Ngôn tình', 'Truyện ngôn tình lãng mạn', '2023-08-25 01:15:56', '2023-08-25 01:15:56'),
(5, 'Lịch sử', 'Lịch sử hào hùng', '2023-08-25 01:15:56', '2023-08-25 01:15:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lops`
--

CREATE TABLE `lops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlop` varchar(100) NOT NULL,
  `id_khoa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lops`
--

INSERT INTO `lops` (`id`, `tenlop`, `id_khoa`, `created_at`, `updated_at`) VALUES
(1, 'NGCQM343', 4, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(2, 'DDOLG311', 4, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(3, 'KXDKV113', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(4, 'RMXQY043', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(5, 'WIRNS420', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(6, 'WBEVA431', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(7, 'QDLRE231', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(8, 'QSFAA120', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(9, 'XLCVC020', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(10, 'TWRBD443', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(11, 'PKBSD330', 4, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(12, 'KVJWA312', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(13, 'NOQFK134', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(14, 'ABEMQ100', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(15, 'QXNGV403', 4, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(16, 'JHFFU032', 5, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(17, 'MEIPB101', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(18, 'YNLKN230', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(19, 'UFWLZ311', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(20, 'PBCPQ302', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(21, 'ETMNQ112', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(22, 'VGFEK213', 5, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(23, 'DQGHH442', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(24, 'HEFGO020', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(25, 'DGSLL140', 3, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(26, 'PYHVO010', 4, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(27, 'NOTUF130', 5, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(28, 'OBVFJ032', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(29, 'LUQTN342', 1, '2023-08-21 19:08:06', '2023-08-21 19:08:06'),
(30, 'JKNTN112', 2, '2023-08-21 19:08:06', '2023-08-21 19:08:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_18_014941_create_khoas_table', 1),
(6, '2023_08_18_015618_create_lops_table', 1),
(7, '2023_08_18_022841_create_sinhviens_table', 1),
(8, '2023_08_18_023116_create_loaisaches_table', 1),
(9, '2023_08_18_024625_create_saches_table', 1),
(10, '2023_08_18_024805_create_sach_muon_tras_table', 1),
(11, '2023_08_18_033410_create_chi_tiet_sach_muon_tras_table', 1),
(12, '2023_08_22_011001_create_nha_cung_caps_table', 2),
(13, '2023_08_22_011351_create_phieu_nhaps_table', 3),
(14, '2023_08_22_011835_create_chi_tiet_phieu_nhaps_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_caps`
--

CREATE TABLE `nha_cung_caps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tennhacungcap` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_caps`
--

INSERT INTO `nha_cung_caps` (`id`, `tennhacungcap`, `diachi`, `sdt`, `created_at`, `updated_at`) VALUES
(1, 'Johanna Lang III', 'rerum', 'unde', '2023-08-21 19:51:37', '2023-08-21 19:51:37'),
(2, 'Roel Abshire', 'dolor', 'temporibus', '2023-08-21 19:51:37', '2023-08-21 19:51:37'),
(3, 'Mr. Titus Williamson', 'hic', 'rem', '2023-08-21 19:51:37', '2023-08-21 19:51:37'),
(4, 'Marianna Abernathy', 'sunt', 'doloribus', '2023-08-21 19:51:37', '2023-08-21 19:51:37'),
(5, 'Sienna Mayert', 'autem', 'incidunt', '2023-08-21 19:51:37', '2023-08-21 19:51:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `phieu_nhaps`
--

CREATE TABLE `phieu_nhaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ngaynhap` date NOT NULL,
  `tongsachnhap` int(11) NOT NULL,
  `tongtiennhap` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_nhaps`
--

INSERT INTO `phieu_nhaps` (`id`, `ngaynhap`, `tongsachnhap`, `tongtiennhap`, `created_at`, `updated_at`) VALUES
(2, '2023-10-05', 1000, 100000.00, '2023-10-05 04:40:13', '2023-10-05 04:40:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saches`
--

CREATE TABLE `saches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `masach` varchar(50) NOT NULL,
  `tensach` varchar(500) NOT NULL,
  `sotrang` int(50) NOT NULL,
  `mota` text NOT NULL,
  `anh` varchar(500) NOT NULL,
  `namxb` int(11) NOT NULL,
  `nhaxb` bigint(20) UNSIGNED NOT NULL,
  `tacgia` varchar(100) NOT NULL,
  `giatien` double(10,2) NOT NULL,
  `tinhtrangsach` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `id_loaisaches` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `saches`
--

INSERT INTO `saches` (`id`, `masach`, `tensach`, `sotrang`, `mota`, `anh`, `namxb`, `nhaxb`, `tacgia`, `giatien`, `tinhtrangsach`, `soluong`, `id_loaisaches`, `created_at`, `updated_at`) VALUES
(7, 'TYRYB03', 'Lập trình Java căn bản', 0, 'SHy1RjTvoY', 'ltjv.jpg', 2009, 4, 'Prof. Kellen Kassulke', 7419.00, 'mới', 28, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(8, 'RLRCL12', 'Lập trình Pascal', 0, '3UAIO6dLHe', 'ltpc.jpg', 2004, 2, 'Miss Mariela Metz', 8731.00, 'cũ', 14, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(10, 'WFVUH24', 'Tiếng Anh 12', 0, 'dokJQR41dT', 'ta12.jpg\r\n', 2023, 5, 'Elvie Larson DDS', 9241.00, 'cũ', 7, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(11, 'UCRIU14', 'Lập trình Python', 0, 'd2yj2ppLj7', 'ltpt.jpg', 2014, 5, 'Dasia Johns', 7160.00, 'cũ', 6, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(12, 'WCYGZ32', 'Ngữ văn 12', 0, 'nFMPoGYmWA', 'nv12.jpg', 1999, 1, 'Alexane Gulgowski', 4632.00, 'mới', 26, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(13, 'GWBEV20', 'Địa lí 12', 0, 'RTXboCEdzM', 'dl12.jpg', 2022, 5, 'Anthony Casper', 1268.00, 'mới', 12, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(14, 'WMETH23', 'Lịch sử 12', 0, '0j7EYjAa4L', 'ls12.jpg\r\n', 2016, 4, 'Zena Hegmann MD', 6099.00, 'mới', 11, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(16, 'XKDJH34', 'Lập trình và cuộc sống', 0, 'KI7a8XsqYd', 'ltvcs.jpg', 2017, 1, 'Alanna Buckridge', 4453.00, 'cũ', 10, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(17, 'MDTWF04', 'Tin học 12 ', 0, 'l1X6GoEjX0', 't12.jpg', 2010, 1, 'Brenna Robel', 6861.00, 'mới', 3, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(18, 'CCHEO03', 'Lập trình C#', 0, 'DBlVN7LKit', 'cc.jpg', 2008, 3, 'Jaqueline Oberbrunner', 7728.00, 'mới', 28, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(19, 'XEKDG00', 'Công nghệ 12', 0, '2v7iQfR7rY', 'cn12.jpg', 2004, 3, 'Haley Halvorson', 7039.00, 'cũ', 16, 2, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(20, 'GMPPV21', 'Hành trang lập trình', 0, 'J0TSSOaXEY', 'htlt.jpg', 2008, 3, 'Cecelia Rodriguez', 3688.00, 'cũ', 19, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(21, 'JEHVM03', 'Lập trình cơ bản PHP và MYSQL', 0, 'JFuPBOE4H7', 'php.jpg', 2001, 3, 'Mrs. Cassandra Crooks', 6407.00, 'cũ', 29, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(22, 'RQIBK30', 'Kĩ thuật lập trình C', 0, 'GlKRGhSQ85', 'ktltc.jpg', 2003, 3, 'Lexus Veum', 8096.00, 'cũ', 26, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(23, 'JUOZZ14', 'Lập trình cơ bản', 0, '3wNUcRrOUU', 'ltcb.jpg', 2021, 3, 'Breana Muller', 5091.00, 'mới', 18, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(25, 'RVFLO44', 'Java Code', 0, 'rZdexMhYll', 'jvc.jpg', 2013, 1, 'Chet Turcotte', 4347.00, 'cũ', 12, 3, '2023-08-21 20:33:50', '2023-08-21 20:33:50'),
(28, 'ms001', 'sách mới', 0, 'ứadw', 'drmtap1.jpg', 1111, 2, 'hà quang vinh', 21.00, 'mới', 1, 2, '2023-09-04 19:18:30', '2023-09-04 19:18:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach_muon_tras`
--

CREATE TABLE `sach_muon_tras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `sinhvien` varchar(200) NOT NULL,
  `id_sach` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach_muon_tras`
--

INSERT INTO `sach_muon_tras` (`id`, `id_user`, `sinhvien`, `id_sach`, `email`, `created_at`, `updated_at`) VALUES
(24, 17, 'Nedra Lueilwitz', '12', 'vinhhaql03@gmail.com', '2023-10-05 04:32:07', '2023-10-05 04:32:07'),
(25, 17, 'Nedra Lueilwitz', '13', 'vinhhaql03@gmail.com', '2023-10-05 04:32:07', '2023-10-05 04:32:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(100) NOT NULL,
  `gt` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `id_lop` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `ten`, `gt`, `email`, `diachi`, `sdt`, `id_lop`, `created_at`, `updated_at`) VALUES
(33, 'Consuelo Kunde', 2, 'quibusdam', 'omnis', 'aut', 19, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(34, 'Prof. Junior Funk V', 2, 'consequatur', 'incidunt', 'dolore', 4, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(35, 'Robyn DuBuque', 2, 'et', 'quisquam', 'delectus', 12, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(36, 'Nedra Lueilwitz', 1, 'blanditiis', 'voluptatum', 'iure', 26, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(37, 'Laverna Mertz', 2, 'quis', 'earum', 'enim', 19, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(38, 'Terrill Legros', 2, 'ab', 'quam', 'eos', 20, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(39, 'Eden Walsh', 1, 'quia', 'dolorum', 'blanditiis', 1, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(40, 'Margaret McDermott', 2, 'molestiae', 'repellendus', 'non', 3, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(41, 'Johnson Gutkowski', 2, 'aut', 'molestias', 'saepe', 25, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(42, 'Delphia Fadel', 2, 'esse', 'aliquid', 'atque', 19, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(43, 'Victor Satterfield', 2, 'et', 'et', 'voluptatem', 26, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(44, 'Aidan O\'Reilly', 2, 'odit', 'tempore', 'rerum', 26, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(45, 'Jillian Borer', 1, 'maiores', 'quisquam', 'hic', 5, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(46, 'Presley Leannon', 2, 'nihil', 'sapiente', 'placeat', 8, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(47, 'Kendall Schuster', 1, 'debitis', 'molestiae', 'facere', 27, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(48, 'Prof. Stan Kris', 2, 'quas', 'reprehenderit', 'voluptate', 30, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(49, 'Jovan Lebsack', 2, 'nobis', 'et', 'et', 27, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(50, 'Greg Purdy', 1, 'similique', 'ea', 'numquam', 21, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(51, 'Gonzalo Blick IV', 1, 'aspernatur', 'est', 'consequatur', 1, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(52, 'Clarissa McKenzie', 2, 'modi', 'at', 'est', 1, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(53, 'Mr. Adriel Nienow', 1, 'enim', 'est', 'non', 7, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(54, 'Dr. Jon Adams II', 2, 'dolores', 'optio', 'aut', 16, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(55, 'Kyra Moen', 1, 'dolores', 'libero', 'aut', 11, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(56, 'Karelle Bauch', 1, 'culpa', 'quasi', 'et', 18, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(57, 'Mr. London Morissette Sr.', 2, 'veritatis', 'quaerat', 'voluptatem', 7, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(58, 'Carlee Sporer', 2, 'dolores', 'consectetur', 'in', 17, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(59, 'Fausto Schultz III', 1, 'ea', 'consequatur', 'quasi', 15, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(60, 'Janae Powlowski', 1, 'laboriosam', 'rem', 'non', 19, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(61, 'Sabrina Bartoletti', 1, 'sint', 'dolores', 'eum', 30, '2023-09-29 02:16:35', '2023-09-29 02:16:35'),
(62, 'Deontae Kris Jr.', 1, 'et', 'labore', 'deleniti', 6, '2023-09-29 02:16:35', '2023-09-29 02:16:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trasach`
--

CREATE TABLE `trasach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ngaytra` date NOT NULL,
  `tinhtrangsach` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trasach`
--

INSERT INTO `trasach` (`id`, `id_user`, `ten`, `email`, `ngaytra`, `tinhtrangsach`, `created_at`, `updated_at`) VALUES
(130, 17, 'Nedra Lueilwitz', 'vinhhaql03@gmail.com', '2023-10-07', 'Mất', '2023-10-05 04:32:34', '2023-10-05 04:32:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khoa` varchar(200) NOT NULL,
  `lop` varchar(200) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `love` varchar(500) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `khoa`, `lop`, `full_name`, `address`, `email`, `phone`, `email_verified_at`, `password`, `level`, `love`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'quos', 'NGCQM343', 'Nedra Lueilwitz', 'sdffdf', 'vinhhaql03@gmail.com', '0333501375', NULL, '$2y$10$jlOveJdIKAwkKmpLYIgOwO5xFHs5SQ2I8glRfyZx3oz4/Z6.sVvb6', 1, '', NULL, '2023-10-03 18:14:41', '2023-10-03 18:14:41'),
(18, 'quos', 'QDLRE231', 'Robyn DuBuque', 'sdffdf', 'a1@gmail.com', '0333501375', NULL, '$2y$10$k3xTiAZv78v6yXmL1wu70.Zs89BK4l8zSpHCng8vy9VA0xri/CvK2', 3, '', NULL, '2023-10-03 18:15:07', '2023-10-05 03:43:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_phieu_nhaps_id_phieunhap_foreign` (`id_phieunhap`),
  ADD KEY `chi_tiet_phieu_nhaps_id_sach_foreign` (`id_sach`),
  ADD KEY `chi_tiet_phieu_nhaps_id_nhacungcap_foreign` (`id_nhacungcap`);

--
-- Chỉ mục cho bảng `chi_tiet_sach_muon_tras`
--
ALTER TABLE `chi_tiet_sach_muon_tras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_sach_muon_tras_id_sachmuontra_foreign` (`id_sachmuontra`);

--
-- Chỉ mục cho bảng `cttrasach`
--
ALTER TABLE `cttrasach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fr_tra` (`id_tra`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `khoas`
--
ALTER TABLE `khoas`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisaches`
--
ALTER TABLE `loaisaches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lops`
--
ALTER TABLE `lops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lops_id_khoa_foreign` (`id_khoa`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_cung_caps`
--
ALTER TABLE `nha_cung_caps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phieu_nhaps`
--
ALTER TABLE `phieu_nhaps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `saches`
--
ALTER TABLE `saches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masach` (`masach`),
  ADD KEY `saches_id_loaisaches_foreign` (`id_loaisaches`),
  ADD KEY `fk_nhaxb` (`nhaxb`);

--
-- Chỉ mục cho bảng `sach_muon_tras`
--
ALTER TABLE `sach_muon_tras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_us_sm` (`id_user`);

--
-- Chỉ mục cho bảng `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinhviens_id_lop_foreign` (`id_lop`);

--
-- Chỉ mục cho bảng `trasach`
--
ALTER TABLE `trasach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fr_trasach` (`id_user`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_sach_muon_tras`
--
ALTER TABLE `chi_tiet_sach_muon_tras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `cttrasach`
--
ALTER TABLE `cttrasach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoas`
--
ALTER TABLE `khoas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaisaches`
--
ALTER TABLE `loaisaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lops`
--
ALTER TABLE `lops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nha_cung_caps`
--
ALTER TABLE `nha_cung_caps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieu_nhaps`
--
ALTER TABLE `phieu_nhaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `saches`
--
ALTER TABLE `saches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sach_muon_tras`
--
ALTER TABLE `sach_muon_tras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `trasach`
--
ALTER TABLE `trasach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  ADD CONSTRAINT `chi_tiet_phieu_nhaps_id_nhacungcap_foreign` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nha_cung_caps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_phieu_nhaps_id_phieunhap_foreign` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieu_nhaps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_phieu_nhaps_id_sach_foreign` FOREIGN KEY (`id_sach`) REFERENCES `saches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_sach_muon_tras`
--
ALTER TABLE `chi_tiet_sach_muon_tras`
  ADD CONSTRAINT `chi_tiet_sach_muon_tras_id_sachmuontra_foreign` FOREIGN KEY (`id_sachmuontra`) REFERENCES `sach_muon_tras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cttrasach`
--
ALTER TABLE `cttrasach`
  ADD CONSTRAINT `fr_tra` FOREIGN KEY (`id_tra`) REFERENCES `trasach` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lops`
--
ALTER TABLE `lops`
  ADD CONSTRAINT `lops_id_khoa_foreign` FOREIGN KEY (`id_khoa`) REFERENCES `khoas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `saches`
--
ALTER TABLE `saches`
  ADD CONSTRAINT `fk_nhaxb` FOREIGN KEY (`nhaxb`) REFERENCES `nha_cung_caps` (`id`),
  ADD CONSTRAINT `saches_id_loaisaches_foreign` FOREIGN KEY (`id_loaisaches`) REFERENCES `loaisaches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sach_muon_tras`
--
ALTER TABLE `sach_muon_tras`
  ADD CONSTRAINT `fk_us_sm` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD CONSTRAINT `sinhviens_id_lop_foreign` FOREIGN KEY (`id_lop`) REFERENCES `lops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `trasach`
--
ALTER TABLE `trasach`
  ADD CONSTRAINT `fr_trasach` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
