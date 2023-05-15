-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2022 lúc 09:04 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `director`
--

CREATE TABLE `director` (
  `id_director` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `director`
--

INSERT INTO `director` (`id_director`, `username`, `password`, `fullname`, `age`, `gioitinh`, `address`, `sdt`, `email`, `image`, `created_at`) VALUES
(2, 'thinhad', '123', 'Nguyễn Anh Thương', 22, 'Male', '411/67/18A Nguyễn Văn Lượng', '0327175935', 'hoducthinhiuhk13@gmail.com', 'phim-luu-ly-my-nhan-sat-2-1598863586956884235326.jpg', '2020-12-04 09:48:37'),
(3, 'minhthuong', '123', 'Nguyễn Anh Thương', 41, 'Male', 'TPBuôn Ma Thuột', '0961380179', '', '245093806_597784638326451_4420361854157024495_n.jpg', '2021-10-29 23:38:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctor`
--

CREATE TABLE `doctor` (
  `id_doctor` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_khoa` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doctor`
--

INSERT INTO `doctor` (`id_doctor`, `username`, `password`, `fullname`, `age`, `gioitinh`, `id_khoa`, `address`, `sdt`, `email`, `image`, `working_address`, `created_at`, `account`) VALUES
(2, 'bacsy2', '1234', 'Nguyễn Nam', 40, 'Nam', 1, '123 Đinh Bộ Lĩnh, TPHCM', '0961380178', 'bacsi2@gmail.com', '', 'binhthanh', '2021-11-02 17:37:04', 'active'),
(3, 'bacsy4', '1234', 'Hồ Thị Phương', 39, 'Nữ', 3, 'Nguyễn Văn Bảo, Gò Vấp,  TPHCM', '0395478125', 'bacsy3@gmail.com', '', 'govap', '2021-11-02 17:39:09', ''),
(4, 'bacsy4', '1234', 'Trịnh Thế Anh', 45, 'Nam', 2, '12 Thống Nhất, Gò Vấp, TPHCM', '0324789147', 'BACCSY4@gmail.com', '', 'Bình Thạnh', '2021-11-02 17:41:43', ''),
(20, 'minhanh', '202cb962ac59075b964b07152d234b70', 'Nguyễn Minh Anh', 22, 'Male', 1, '411/67 - Nguyễn Văn Lượng - Phường 17 - Quận Gò Vấp', '0123456789', 'bacsi1@gmail.com', '', 'govap', '2020-12-04 11:00:12', 'unactive'),
(53, 'bsmt', 'caf1a3dfb505ffed0d024130f58c5cfa', 'Nguyen Thi Minh Thuong', 50, 'Female', 1, '1234 Nguyễn Văn Bảo, Phường 4, Quận Gò Vấp, TPHCM', '0968452128', '', 'BS.png', 'binhthanh', '2021-10-14 09:36:01', 'unactive'),
(55, 'at', '202cb962ac59075b964b07152d234b70', 'My Lan Hồ Ngọc', 0, '', 1, '', '', '', '', 'govap', '2021-10-28 20:27:40', 'active'),
(56, 'bacsygioii', '202cb962ac59075b964b07152d234b70', 'Minh Anh Hà', 0, '', 1, '', '', '', '', 'govap', '2021-10-29 17:38:25', 'active'),
(57, 'bacsi1', '81dc9bdb52d04dc20036dbd8313ed055', 'Hồ Nhất Thiên', 0, '', 2, '', '', '', '', 'binhthanh', '2021-11-02 17:35:15', 'active'),
(58, 'bacsi10', 'fcea920f7412b5da7be0cf42b8c93759', 'Chà Đào', 0, '', 3, '', '', '', '', 'govap', '2021-11-08 09:45:16', 'active'),
(59, '18064701', 'faafc315b95987fc2b071bcd8f698b81', 'ff', 0, '', 0, '', '', '', '', 'govap', '2021-12-05 13:07:37', 'active'),
(60, 'TTT', '202cb962ac59075b964b07152d234b70', 'ff', 0, '', 0, '', '', '', '', 'govap', '2021-12-05 13:07:47', 'active'),
(61, 'mtmt', '202cb962ac59075b964b07152d234b70', 'Anh Thương Hà', 0, '', 0, '', '', '', '', 'govap', '2021-12-05 13:08:32', 'active'),
(62, 'mtmtMT', '202cb962ac59075b964b07152d234b70', 'Anh Thương Hà', 0, '', 1, '', '', '', '', 'Mời bạn chọn chi nhánh.', '2021-12-05 13:10:10', 'active'),
(63, 'Minhthuong12', '202cb962ac59075b964b07152d234b70', 'Anh Thương Hà', 0, '', 2, '', '', '', '', 'govap', '2021-12-05 13:10:27', 'active'),
(64, 'bacsi123', '202cb962ac59075b964b07152d234b70', 'Anh Thương', 0, '', 1, '', '', '', '', 'govap', '2021-12-20 13:49:45', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id_khoa` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id_khoa`, `name`, `nameF`) VALUES
(1, 'khoa_noi', 'Khoa nội'),
(2, 'khoa_ngoai', 'Khoa ngoại'),
(3, 'khoa_phcn', 'Khoa phục hồi chức năng'),
(4, 'khoa_xetnghiem', 'khoa xét nghiệm'),
(5, 'khoa_dinhduong', 'Khoa dinh dưỡng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichnghi`
--

CREATE TABLE `lichnghi` (
  `id_lichnghi` int(11) NOT NULL,
  `ngaynghi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichnghi`
--

INSERT INTO `lichnghi` (`id_lichnghi`, `ngaynghi`, `id_doctor`) VALUES
(47, '1_2022-01-26', 56);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id_msg` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `user_from` text NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id_msg`, `body`, `user_from`, `date_sent`) VALUES
(82, 'hello', 'chachanh', '2021-12-18 14:04:34'),
(83, 'c&oacute; ai kh&ocirc;ng?', 'chachanh', '2021-12-18 14:09:27'),
(84, 'xinchao', 'chachanh', '2021-12-18 14:10:20'),
(85, 'aloo', 'chachanh', '2021-12-18 14:12:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieukham`
--

CREATE TABLE `phieukham` (
  `id_phieukham` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayhen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `trieuchung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chidan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phikham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieukham`
--

INSERT INTO `phieukham` (`id_phieukham`, `created_at`, `ngayhen`, `id_user`, `id_doctor`, `trieuchung`, `chidan`, `phikham`) VALUES
(73, '2022-01-14 14:29:46', '4_2022-01-26', 13, 55, 'dđ', NULL, 120),
(74, '2022-01-14 14:30:47', '1_2022-01-21', 13, 55, 'hhh', NULL, 120),
(75, '2022-01-14 14:36:33', '1_2022-01-14', 13, 55, 'sss', NULL, 120),
(76, '2022-01-14 14:42:16', '2_2022-01-14', 13, 56, 'đ', 'ccc', 120),
(77, '2022-01-14 15:01:42', '2_2022-01-14', 13, 55, 'FFF', NULL, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(8, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' ok', '2021-10-08 13:07:26', 'OKK', '2021-10-29 09:33:58', 1),
(9, 'Minh Anh', 'thuongthu305@gmail.com', 369654125, ' CÃ“ KHÃM ONLINE KHÃ”NG áº ', '2021-10-29 09:35:24', 'cÃ³', '2021-10-29 10:27:26', 1),
(10, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' h', '2021-10-29 15:51:25', 'ok', '2021-10-29 15:51:37', 1),
(11, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' m', '2021-10-29 15:51:57', 'ok', '2021-10-29 15:52:15', 1),
(12, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' pp', '2021-10-31 05:42:01', 'ok', '2021-12-03 04:31:13', 1),
(13, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' m', '2021-10-31 05:43:09', NULL, NULL, NULL),
(14, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' m', '2021-10-31 05:43:26', NULL, NULL, NULL),
(15, 'My Lan H?', 'thuongthu305@gmail.com', 961380178, ' t? v?n', '2021-11-07 06:00:10', 'ee', '2021-11-07 06:03:33', 1),
(16, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' fff', '2021-11-07 06:16:35', 'ok hehe thuwww', '2021-11-07 06:17:07', 1),
(17, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' s', '2021-11-07 06:26:00', NULL, NULL, NULL),
(18, 'My Lan Hồ', 'thuongthu305@gmail.com', 369654125, ' s', '2021-11-07 06:27:07', 'sss', '2021-11-07 06:31:56', 1),
(19, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' okk', '2021-11-07 06:31:37', NULL, NULL, NULL),
(20, 'My Lan Há»“', 'thuongthu305@gmail.com', 961380178, ' quÃ¡', '2021-11-07 06:32:12', 'ok', '2021-11-07 06:32:31', 1),
(21, 'My Lan Hồ', 'thuongthu305@gmail.com', 369654125, ' okiee', '2021-11-07 06:34:21', NULL, NULL, NULL),
(22, 'My Lan Hồ', 'thuongthu305@gmail.com', 369654125, ' thư', '2021-11-07 06:37:07', NULL, NULL, NULL),
(23, 'My Lan Há»“', 'thuongthu305@gmail.com', 961380178, ' uuuuww thÆ°', '2021-11-07 06:41:02', 'ok', '2021-11-13 04:45:08', 1),
(24, 'My Lan Há»“', 'thuongthu305@gmail.com', 961380178, ' okirorr', '2021-11-17 16:29:18', 'ok', '2021-11-17 16:29:38', 1),
(25, 'My Lan Há»“', 'thuongthu305@gmail.com', 369654125, ' báº¡n', '2021-12-19 09:34:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 8, '111', '111', '11', '11', '11', '2021-10-28 09:41:14'),
(9, 10, '111', '111', '34', '11', 'sap', '2021-10-30 07:03:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `PatientGender` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PatientAdd` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(13, 0, 'Minh Anh', 986814522, 'thuongthu305@gmail.com', 'male', '123 Nguyá»…n VÄƒn Báº£o, PhÆ°á»ng 4, Quáº­n GÃ² Váº¥p, TPHCM', 34, 'khÃ´ng cÃ³', '2021-11-07 06:55:56', NULL),
(14, 0, 'mmm', 986814522, 'thuongthu305@gmail.com', '', '123 Nguyá»…n VÄƒn Báº£o, PhÆ°á»ng 4, Quáº­n GÃ² Váº¥p, TPHCM', 34, 'hhhh', '2021-12-03 08:24:49', NULL),
(15, 0, 'mmm', 986814522, 'thuongthu305@gmail.com', '', '123 Nguyá»…n VÄƒn Báº£o, PhÆ°á»ng 4, Quáº­n GÃ² Váº¥p, TPHCM', 67, 'TT', '2021-12-05 06:18:21', NULL),
(16, 0, 'mmm', 986814522, 'thuongthu305@gmail.com', 'male', '123 Nguyá»…n VÄƒn Báº£o, PhÆ°á»ng 4, Quáº­n GÃ² Váº¥p, TPHCM', -7, 'BB', '2021-12-05 06:18:37', NULL),
(17, 0, 'mbb', 986814522, 'thuongthu305@gmail.com', 'male', '123 Nguyá»…n VÄƒn Báº£o, PhÆ°á»ng 4, Quáº­n GÃ² Váº¥p, TPHCM', 34, 'v', '2022-01-14 06:57:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `id_thuoc` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `id_phieukham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`id_thuoc`, `name`, `sl`, `dongia`, `tongtien`, `id_phieukham`) VALUES
(1, 'Paracetamol', 3, 10, 30, 2),
(2, 'Eugica', 3, 10, 30, 2),
(3, 'Paracetamol', 4, 10, 40, 5),
(4, 'Eugica', 6, 10, 60, 5),
(5, 'Paracetamol', 3, 10, 30, 1),
(6, 'Paracetamol', 2, 10, 20, 11),
(7, 'Eugica', 2, 10, 20, 11),
(8, 'Tetracyclin', 1, 10, 10, 11),
(9, 'Eugica', 2, 10, 20, 11),
(96, 'Panadoll', 2, 25000, 0, 0),
(97, 'A', 5, 10, 50, 12),
(98, 'Paracetamol', 2, 10, 20, 13),
(99, 'Eugica', 3, 10, 30, 13),
(100, 'Tetracyclin', 2, 10, 20, 14),
(101, 'Tetracyclin', 4, 10, 40, 14),
(102, 'Paracetamol', 3, 10, 30, 14),
(103, 'Eugica', 3, 10, 30, 14),
(104, 'Eugica', 0, 10, 0, 15),
(105, 'Paracetamol', 2, 10, 20, 18),
(106, 'Paracetamol', 3, 10, 30, 19),
(107, 'Paracetamol', 2, 10, 20, 20),
(108, 'Eugica', 10, 10, 100, 20),
(109, 'Tetracyclin', 1000, 10, 10000, 21),
(110, 'Paracetamol', 1, 10, 10, 23),
(111, 'Eugica', 4, 10, 40, 24),
(112, 'Eugica', 2, 10, 20, 25),
(113, 'Eugica', 0, 10, 0, 26),
(114, 'Paracetamol', 0, 10, 0, 26),
(115, 'Paracetamol', 8, 10, 80, 27),
(116, 'Eugica', 8, 10, 80, 27),
(117, 'Paracetamol', 0, 10, 0, 28),
(118, 'Paracetamol', 4, 10, 40, 30),
(119, 'Paracetamol', 1, 10, 10, 39),
(120, 'Eugica', 0, 10, 0, 40),
(121, 'Paracetamol', 3, 10, 30, 46),
(122, 'Eugica', 0, 10, 0, 49),
(123, 'Paracetamol', 2, 10, 20, 56),
(124, 'Eugica', 2, 10, 20, 57),
(125, 'Paracetamol', 3, 10, 30, 57),
(126, 'Paracetamol', 4, 10, 40, 59),
(127, 'Paracetamol', 2, 10, 20, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id` int(11) NOT NULL,
  `TuaDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TinTuc` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaNhanVien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`id`, `TuaDe`, `TinTuc`, `img`, `MaNhanVien`, `url`, `ten_url`, `NgayDang`) VALUES
(25, 'Covid (18/11)))', 'Hôm nay (2.11), Việt Nam ghi nhận 5.637 ca mắc COVID-19, 2.741 ca khỏi bệnh', '_118765353_gettyimages-1231588958-3.jpg', '', 'https://laodong.vn/y-te/hom-nay-211-viet-nam-ghi-nhan-5637-ca-mac-covid-19-2741-ca-khoi-benh-969963.ldo', 'Tình', ''),
(35, 'Covid(20/12)', 'Biến thể Omicron có thể tiến hóa từ virus gây cảm thông thường, cho phép nó lây lan với tốc độ nhanh chóng hơn vẫn tưởng, theo tờ The Hill dẫn báo cáo của các chuyên gia Mỹ.\r\nHôm 4.12, công ty y sinh Nference ở Cambridge (bang Massachusetts, Mỹ) công bố dữ liệu cho thấy biến thể Omicron chia sẻ vật liệu di truyền tương tự HCoV-229E, virus gây cảm ở người.\r\n\r\nPhát hiện bí mật giúp biến thể Omicron lây lan nhanh chóng - ảnh 1\r\nCác chuyên gia tìm thấy SARS-CoV-2 và HCoV-229E hiện diện bên trong mô tế bào ở đường tiêu hóa và hô hấp của những cá nhân mắc Covid-19\r\n\r\nAFP\r\n\r\nCác nhà nghiên cứu của Nference cho rằng Omicron sinh ra từ một cá nhân vừa nhiễm cả SARS-CoV-2 lẫn HCoV-229E.\r\n\r\nTheo báo cáo, các chuyên gia tìm thấy SARS-CoV-2 và HCoV-229E hiện diện bên trong mô tế bào ở đường tiêu hóa và hô hấp của những cá nhân mắc Covid-19. Họ đưa ra giả thuyết cho rằng tình trạng “tương tác gien di truyền”, hoặc trao đổi vật liệu di truyền giữa các virus, có thể đã dẫn đến sự xuất hiện của biến thể Omicron.\r\n\r\nNgoại trừ Omicron, đến nay các nhà nghiên cứu chưa phát hiện biến thể nào khác của SARS-CoV-2 sở hữu gien di truyền tương tự HCoV-229E.\r\n\r\nNference cũng so sánh vật liệu di truyền của Omicron với các biến thể khác của SARS-CoV-2, bao gồm Delta. Họ phát hiện Omicron chứa đến 26 đột biến đặc trưng so với những biến thể còn lại.\r\n\r\n\r\nThế giới bất an vì biến thể Omicron của Covid-19\r\nOmicron phát hiện ở Nam Phi ngày 24.11. Trong vòng 1 tuần, biến thể mới lan đến gần 40 quốc gia (tính đến ngày 5.12), bao gồm Mỹ.\r\n\r\nNam Phi chứng kiến số ca mới tăng mạnh, từ khoảng 2.000 ca/ngày vào thời điểm 25.11 tăng lên hơn 11.000 ca/ngày hôm 2.12.\r\n\r\nDự kiến phải mất vài tuần trước khi các nhà khoa học thế giới hiểu rõ hơn về biến thể Omicron.', 'bbb.jpg', '', 'https://thanhnien.vn/phat-hien-bi-mat-giup-bien-the-omicron-lay-lan-nhanh-chong-post1408317.html', 'https://thanhnien.vn/phat-hien-bi-mat-giup-bien-the-omicron-lay-lan-nhanh-chong-post1408317.html', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`, `age`, `gioitinh`, `address`, `sdt`, `email`, `image`, `created_at`) VALUES
(13, 'chachanh', '202cb962ac59075b964b07152d234b70', 'Chà Chanh', 40, 'Male', '123 Nguyễn Văn Bảo, Phường 4', '0961380179', 'thuongthu30445@gmail.com', '245093806_597784638326451_4420361854157024495_n.jpg', '2021-11-07 18:35:59'),
(14, 'chadao', '202cb962ac59075b964b07152d234b70', 'Chà Chanh', 21, 'Female', '123 Nguyễn Văn Bảo, Phường 4', '0961381025', 'thuongthu3305@gmail.com', '245093806_597784638326451_4420361854157024495_n.jpg', '2021-11-17 23:18:29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id_director`);

--
-- Chỉ mục cho bảng `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id_khoa`);

--
-- Chỉ mục cho bảng `lichnghi`
--
ALTER TABLE `lichnghi`
  ADD PRIMARY KEY (`id_lichnghi`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_msg`);

--
-- Chỉ mục cho bảng `phieukham`
--
ALTER TABLE `phieukham`
  ADD PRIMARY KEY (`id_phieukham`);

--
-- Chỉ mục cho bảng `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`id_thuoc`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `director`
--
ALTER TABLE `director`
  MODIFY `id_director` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id_khoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `lichnghi`
--
ALTER TABLE `lichnghi`
  MODIFY `id_lichnghi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `phieukham`
--
ALTER TABLE `phieukham`
  MODIFY `id_phieukham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  MODIFY `id_thuoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
