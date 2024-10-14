-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2024 at 06:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ban_thu_cung`
--

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `noi_dung` text COLLATE utf8mb4_general_ci NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` int NOT NULL,
  `don_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `so_luong` int NOT NULL,
  `thanh_tien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_gio_hangs`
--

CREATE TABLE `chi_tiet_gio_hangs` (
  `id` int NOT NULL,
  `gio_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `so_luong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` int NOT NULL,
  `ten_chuc_vu` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`) VALUES
(1, 'admin'),
(2, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` int NOT NULL,
  `ten_danh_muc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `ten_danh_muc`, `mo_ta`) VALUES
(1, 'giống shiba', 'thân thiện'),
(2, 'giống chó cỏ', 'thân thiện');

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` int NOT NULL,
  `ma_don_hang` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `ten_nguoi_nhan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_nguoi_nhan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sdt_nguoi_nhan` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `dia_chi_nguoi_nhan` text COLLATE utf8mb4_general_ci NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ghi_chu` text COLLATE utf8mb4_general_ci,
  `phuong_thuc_thanh_toan_id` int NOT NULL,
  `trang_thai_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `link_hinh_anh` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `link_hinh_anh`) VALUES
(1, 1, './uploads/1728886132tải xuống (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `id` int NOT NULL,
  `ten_phuong_thuc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `san_phams`
--

CREATE TABLE `san_phams` (
  `id` int NOT NULL,
  `ten_san_pham` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gia_san_pham` decimal(10,2) NOT NULL,
  `gia_khuyen_mai` decimal(10,2) DEFAULT NULL,
  `hinh_anh` text COLLATE utf8mb4_general_ci,
  `so_luong` int NOT NULL,
  `luot_xem` int DEFAULT '0',
  `ngay_nhap` date NOT NULL,
  `mo_ta` text COLLATE utf8mb4_general_ci,
  `danh_muc_id` int NOT NULL,
  `trang_thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `san_phams`
--

INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(1, 'Chó Chihuahua', '500000.00', '300000.00', 'https://cdn.mobilecity.vn/mobilecity-vn/images/2021/12/tong-hop-meo-giup-ban-chup-nhung-buc-anh-dep-hon-ve-thu-cung-cua-minh.jpg.webp', 10, 10, '2024-07-19', 'Chó Chihuahua vốn “xuất thân” từ Mexico nhưng lại được mọi người biết đến nhờ Trung Quốc. Chúng có vóc dáng nhỏ nhắn, cao khoảng 16 – 20cm, nặng tầm 1,5 – 3kg với cái đầu nhỏ, tai dựng đứng, mắt to tròn và màu lông khá đa dạng. Chihuahua khá thông minh, nhanh nhẹn, thích được chiều và rất trung thành với chủ.', 1, 1),
(2, 'Chó Bắc Kinh và Bắc Kinh lai Nhật', '500000.00', '315000.00', NULL, 20, 15, '2024-07-19', 'Cả hai giống chó này đều có nguồn gốc từ Trung Quốc và điểm khác nhau nổi bật nhất chính là bộ lông của chúng. Chó Bắc Kinh thì bộ lông thường chỉ có một màu, mũi hếch, giữa mũi và trán có phần bị gãy, mõm ngắn, nặng tầm 3 – 5kg và cao khoảng 14 – 26cm.', 1, 1),
(5, 'Chó Dachshund (chó Lạp Xưởng/Xúc Xích)', '528.00', '316.00', 'data:image/jpeg;base64,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', 38, 0, '2024-07-21', 'Chó Dachshund có nguồn gốc từ Đức, sở hữu ngoại hình tựa như cây lạp xưởng/xúc xích vô cùng độc đáo. Chúng thường nặng tầm 7 – 15kg, cao khoảng 20 – 27cm, chân ngắn, tai dài cụp xuống và có bộ lông màu vàng/nâu đỏ/đen khá mượt mà. Loại chó này rất dễ gần, thân thiện và trung thành với chủ.', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `id` int NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `anh_dai_dien` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gioi_tinh` tinyint(1) DEFAULT '1',
  `dia_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `mat_khau` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `chuc_vu_id` int NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tai_khoans`
--

INSERT INTO `tai_khoans` (`id`, `ho_ten`, `anh_dai_dien`, `ngay_sinh`, `email`, `so_dien_thoai`, `gioi_tinh`, `dia_chi`, `mat_khau`, `chuc_vu_id`, `trang_thai`) VALUES
(1, NULL, NULL, NULL, '123@gmail.com', NULL, 1, NULL, 'duy123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_don_hangs`
--

CREATE TABLE `trang_thai_don_hangs` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
