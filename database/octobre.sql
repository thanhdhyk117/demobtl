-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 09:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `octobre`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `category_status` tinyint(3) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hotcategory` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `status`, `category_status`, `content`, `hotcategory`, `created_at`, `updated_at`) VALUES
(25, 'Váy', '1669361954-vay.jpg', 1, 1, '<p>Danh mục c&aacute;c loại v&aacute;y cho ph&aacute;i nữ</p>\r\n', 1, '2022-11-25 07:39:14', NULL),
(28, 'Thời trang 24h', '', 1, 0, '<p>Cung cấp c&aacute;c xu thế thời trang trong v&agrave; ngo&agrave;i nước</p>\r\n', 1, '2022-11-26 03:28:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `hotnews` tinyint(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `user_id`, `name`, `avatar`, `summary`, `content`, `status`, `hotnews`, `created_at`, `updated_at`) VALUES
(9, 28, 0, 'Lương Thùy Linh hóa cô dâu trên sàn diễn', '1669433501-DNG-3137-4245-1669425487.jpg', '<p>Hoa hậu Lương Th&ugrave;y Linh h&oacute;a c&ocirc; d&acirc;u với trang phục cưới của Adrian Anh Tuấn tại Tuần thời trang Quốc tế Việt Nam.</p>\r\n', '<p>Người đẹp đảm nhận vai tr&ograve; vedette bộ sưu tập &quot;Hẹn em&quot;, giới thiệu tại khai mạc Tuần thời trang Quốc tế Việt Nam Thu Đ&ocirc;ng 2022, tối 24/11. Adrian Anh Tuấn lấy cảm hứng từ ca kh&uacute;c &quot;Dư &acirc;m&quot; (Nguyễn Văn T&yacute;) để thực hiện c&aacute;c trang phục thể hiện sự l&atilde;ng mạn, bay bổng của t&igrave;nh y&ecirc;u. Video:&nbsp;<em>Multimedia</em></p>\r\n\r\n<p><img alt=\"B/s ảnh Lương Thùy Linh diện váy cưới trên sàn diễn - 1\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/DNG-3137-4245-1669425487.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7RaBa_9RHVKpYHgGwd8dVA\" /></p>\r\n\r\n<p><a href=\"https://vnexpress.net/chu-de/hoa-hau-luong-thuy-linh-5206\">Lương Th&ugrave;y Linh</a>&nbsp;h&oacute;a c&ocirc; d&acirc;u tr&ecirc;n s&agrave;n diễn với &aacute;o d&agrave;i sắc m&agrave;u, họa tiết hoa hồng. Chiếc khăn tr&ugrave;m đầu, m&agrave;u son đỏ l&agrave; điểm nhấn của trang phục, gợi đ&aacute;m cưới những năm 1980, 1990.</p>\r\n\r\n<p><img alt=\"B/s ảnh Lương Thùy Linh diện váy cưới trên sàn diễn - 2\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/DNG-3099-3933-1669425487.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zhPYKFpvssyG302znvTuDA\" /></p>\r\n\r\n<p>Bộ sưu tập chia l&agrave;m hai phần gồm khắc họa cuộc hẹn h&ograve; lứa đ&ocirc;i v&agrave; lời hẹn ước trăm năm hạnh ph&uacute;c.</p>\r\n\r\n<p><img alt=\"Đỗ Thị Hà diễn trang phục bay bổng chất liệu ren ở phần hai của bộ sưu tập. Hình ảnh hoa hồng thể hiện cho sự bất diệt của tình yêu.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/25/0036AVIFW-FW2022-foto-KIENGCAN-3510-8214-1669348001.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=NF-CqrL7heJS5n0_dQjn_Q\" /></p>\r\n\r\n<p><a href=\"https://vnexpress.net/chu-de/hoa-hau-do-thi-ha-3090\">Đỗ Thị H&agrave;</a>&nbsp;diễn trang phục bay bổng chất liệu ren ở phần hai của bộ sưu tập. Nh&agrave; thiết kế sử dụng nhiều h&igrave;nh ảnh hoa hồng nhằm thể hiện tinh thần bất diệt trong t&igrave;nh y&ecirc;u. Ảnh:&nbsp;<em>Kiếng Cận team</em></p>\r\n\r\n<p><img alt=\"Trước đó, hoa hậu mở màn với trang phục phong cách cổ điển.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/Do-Thi-Ha-9429-1669395713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gGIcnfz67xYz5_fo5c83oA\" /></p>\r\n\r\n<p>Trước đ&oacute;, hoa hậu mở m&agrave;n với trang phục phong c&aacute;ch cổ điển.</p>\r\n\r\n<p><img alt=\"Adrian Anh Tuấn giới thiệu 35 thiết kế làm từ vải nhung, lụa, ren cao cấp.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/BST-Adrian-Anh-Tuan-9874-1669395713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=VngYzWsJQRen3IyVaIAkXQ\" /></p>\r\n\r\n<p>Adrian Anh Tuấn giới thiệu 35 thiết kế l&agrave;m từ vải nhung, lụa, ren cao cấp.</p>\r\n\r\n<p><img alt=\"Anh còn sử dụng chất liệu thân thiện môi trường, tái chế như vỏ hàu, cây tre.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/BST-Adrian-Anh-Tuan-5-1535-1669395713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ymdykiQQDRfwAjADLMXTfg\" /></p>\r\n\r\n<p>Anh c&ograve;n sử dụng chất liệu th&acirc;n thiện m&ocirc;i trường, t&aacute;i chế như vỏ h&agrave;u, c&acirc;y tre.</p>\r\n\r\n<p><img alt=\"Các thiết kế dành cho nam giới nằm trong bộ sưu tập Hẹn em.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/BST-cua-Adrian-Anh-Tuan-4077-1669395713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Zp0UDiaIbA9OrqQ3W42Tgw\" /></p>\r\n\r\n<p>C&aacute;c thiết kế d&agrave;nh cho nam giới nằm trong bộ sưu tập &quot;Hẹn em&quot;.</p>\r\n\r\n<p><img alt=\"Một số thiết kế nổi bật trong bộ sưu tập Hẹn em.\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/BST-Hen-em-2007-1669395713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hWGb85fv3z3jiPQpTAWrUA\" /></p>\r\n\r\n<p>Một số mẫu trang phục nổi bật kh&aacute;c tr&ecirc;n s&agrave;n diễn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"B/s ảnh Lương Thùy Linh diện váy cưới trên sàn diễn - 3\" src=\"https://i1-giaitri.vnecdn.net/2022/11/26/DNG-3175-4570-1669425487.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=3R4uWE3NCigOeno_x7NhiQ\" /></p>\r\n\r\n<p>Adrian Anh Tuấn v&agrave; c&aacute;c người mẫu ch&agrave;o kết.</p>\r\n', 1, 1, '2022-11-26 03:31:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(255) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `phone` varchar(255) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ khách hàng',
  `price_total` int(11) DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint(2) DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `phone`, `email`, `note`, `price_total`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(90, 10, 'Nguyen Trung Thanh', '123 VH', '0123456789', 'ntt@gmail.com', 'giao hàng trong giờ hành chính giúp mình', 1440000, 1, 1, '2022-11-25 08:51:12', '2022-11-25 15:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quality`) VALUES
(26, 90, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `hotproducer` tinyint(3) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `avatar`, `hotproducer`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Chanel', '1669391663-184083799_1071779603230355_6722151818905702278_n.jpg', 0, 1, '2022-11-25 03:00:46', '2022-11-25 22:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `summary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `hotproduct` tinyint(3) NOT NULL,
  `total_number_rating` int(11) NOT NULL,
  `total_rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `producer_id`, `title`, `avatar`, `price`, `quality`, `summary`, `content`, `status`, `discount`, `hotproduct`, `total_number_rating`, `total_rating`, `created_at`, `updated_at`) VALUES
(35, 25, 7, 'Váy  đủ màu', '1669366168-315954562_1444699722605006_3713155564539605957_n.jpg', 800000, 0, '', '<p>BỘ QU&Agrave; TẶNG 900K CHO ĐƠN H&Agrave;NG TỪ 1199K:</p>\r\n\r\n<p>01 mũ S Cap Premium</p>\r\n\r\n<p>01 t&uacute;i Big Logo Tote Bag</p>\r\n\r\n<p>01 voucher trị gi&aacute; 100K</p>\r\n', 1, 10, 1, 0, 0, '2022-11-25 08:49:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `avatar`) VALUES
(140, 35, '1669366168-315954562_1444699722605006_3713155564539605957_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `address`, `password`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'nqh1102011@gmail.com', '0971071011', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 1, '2022-10-10 08:01:19', NULL),
(5, 'Nguyễn Trung Thành', 'ntt12h@gmail.com', '0846842286', 'Thanh Hóa', 'e10adc3949ba59abbe56e057f20f883e', 1, '2022-10-31 07:10:49', NULL),
(10, 'Nguyen Trung Thanh', 'ntt@gmail.com', '0123456789', '123 VH', 'e10adc3949ba59abbe56e057f20f883e', 0, '2022-11-25 08:38:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
