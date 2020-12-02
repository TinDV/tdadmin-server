-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 02, 2020 lúc 04:40 PM
-- Phiên bản máy phục vụ: 5.7.32-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tdadmin`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vslog`
--

CREATE TABLE `vslog` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vslog`
--

INSERT INTO `vslog` (`id`, `type`, `time`, `date`, `note`) VALUES
(102, 'vs', '16:39:43', '02/12/2020', 'OK'),
(103, 'vs', '16:39:44', '02/12/2020', 'OK'),
(104, 'other', '16:39:48', '02/12/2020', 'OK'),
(105, 'other', '16:39:49', '02/12/2020', 'OK'),
(106, 'vs', '16:39:54', '02/12/2020', 'OK');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vslog`
--
ALTER TABLE `vslog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vslog`
--
ALTER TABLE `vslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
