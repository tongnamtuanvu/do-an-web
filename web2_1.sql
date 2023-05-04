-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2023 at 01:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `authenID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `authenRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`authenID`, `authenRole`) VALUES
('0', 'Admin'),
('1', 'Sale'),
('2', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `billPurchaser` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `billDate` datetime NOT NULL,
  `billDelivery` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `billTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `brandName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandID`, `brandName`) VALUES
('001', 'Sport'),
('002', 'Grand America'),
('003', 'Cruiser'),
('004', 'Adventure Touring'),
('005', '');

-- --------------------------------------------------------

--
-- Table structure for table `cetorgry`
--

CREATE TABLE `cetorgry` (
  `cetorgryID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cetorgryName` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cetorgry`
--

INSERT INTO `cetorgry` (`cetorgryID`, `cetorgryName`) VALUES
('001', 'Harley Dadvinson'),
('002', ''),
('003', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userID`, `firstName`, `lastName`, `email`) VALUES
('001', 'Tống Nam', 'Tuấn Vũ', 'tongnamtuanvu@gmail.com'),
('0010', 'Tuan', 'Vu', 'vutong@gmail.com'),
('0011', 'van ', 'tu', 'vantu@gmail.com'),
('0012', 'chi', 'nguyen', 'chinguyen@gmail.com'),
('0013', 'Lê Nguyên Thuần ', 'Quốc', 'thuanquoc@gmail.com'),
('0014', 'Nguyen Thi ', 'Minh Thi', 'minhthisale@gmail.com'),
('0015', 'Nguyen Thi ', 'Minh Thi', 'minhthisale123@gmail.com'),
('0016', 'Nguyen Thi', 'Minh Thi', 'minhthisale1234@gmail.com'),
('0017', 'minhthi', 'thi', 'thiminh@gmail.com'),
('0018', 'Nguyen', 'Minh Thi', 'thiminh123@gmail.com'),
('0019', 'tuan ', 'vu', 'vutong123@gmail.com'),
('002', 'Thanos', 'Marvel', 'thanos1234@gmail.com'),
('0020', 'nguyen', 'minh thi', 'thiminh12345@gmail.com'),
('0021', 'nguyen', 'minh thi', 'minhthisaler@gmail.com'),
('0022', 'nguyen', 'minh thi', 'thisaler@gmail.com'),
('0023', 'thuan quoc', 'le', 'quoclesaler@gmail.com'),
('003', 'nguyenthiminh', 'thi', 'Nguyenthi@gmail.com'),
('004', 'Em ', 'Vu', 'emvu@yahoo.com.vn'),
('005', 'Nguyễn Văn ', 'ABC', 'sale@gmail.com'),
('006', 'Phan Phong', 'Luu', 'luu@gmail.com'),
('007', 'Em ', 'Yêu', 'emyeu@gmail.com'),
('008', 'Minh Thi', 'Nguyen', 'Minhthi@gmail.com'),
('009', 'Quoc', 'Le', 'lequoc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productAmount` int(11) NOT NULL,
  `productCetorgry` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productBrand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IMG` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productDescription`, `productPrice`, `productAmount`, `productCetorgry`, `productBrand`, `IMG`, `state`) VALUES
('001', 'Harley Dadvinson Sportster  S 2023 Black', 'Sportster™ S là chương đầu tiên trong cuốn sách hoàn toàn mới về Sportster saga. Một di sản ra đời vào năm 1957 vượt trội so với các đối thủ hiện đã được xây dựng lại để thổi bay các tiêu chuẩn của ngày nay.', 639000000, 50, '001', '001', 'bp1.jpg', 1),
('002', 'Harley Dadvinson Nightster  Special 2023 Black', 'Nightster™ Special 2023 mang vóng dáng mới ly kỳ trong hình bóng Sportster™ cổ điển.', 589000000, 50, '001', '001', 'bp2.jpg', 1),
('003', 'Harley Dadvinson Nightster 2023 Red', 'Nightster™ \n\n2023 Phong cách cổ điển, hiệu suất nhanh nhẹn. ', 500000000, 50, '001', '001', 'bp3.jpg', 1),
('004', 'Harley Dadvinson Sportster  S 2023 Blue', 'Sportster™ S là chương đầu tiên trong cuốn sách hoàn toàn mới về Sportster saga. Một di sản ra đời vào năm 1957 vượt trội so với các đối thủ hiện đã được xây dựng lại để thổi bay các tiêu chuẩn của ngày nay.', 649000000, 50, '001', '001', 'bp4.jpg', 1),
('005', 'Harley Dadvinson Sportster  S 2023 Grey', 'Sportster™ S là chương đầu tiên trong cuốn sách hoàn toàn mới về Sportster saga. Một di sản ra đời vào năm 1957 vượt trội so với các đối thủ hiện đã được xây dựng lại để thổi bay các tiêu chuẩn của ngày nay.', 630000000, 50, '001', '001', 'bp5.jpg', 1),
('006', 'Harley Dadvinson Sportster  S 2023 White', 'Sportster™ S là chương đầu tiên trong cuốn sách hoàn toàn mới về Sportster saga. Một di sản ra đời vào năm 1957 vượt trội so với các đối thủ hiện đã được xây dựng lại để thổi bay các tiêu chuẩn của ngày nay.', 650000000, 50, '001', '001', 'bp10.jpg', 1),
('009', 'Harley Dadvinson Nightster Special 2023 Blue', 'Nightster™ Special 2023 mang vóng dáng mới ly kỳ trong hình bóng Sportster™ cổ điển.', 582000000, 50, '001', '001', 'bp7.jpg', 1),
('012', 'Harley Dadvinson Sportster  S 2023 Grey', 'Sportster™ S là chương đầu tiên trong cuốn sách ho...', 630000000, 50, '001', '001', 'bp5.jpg', 1),
('013', 'Harley Dadvinson Sportster  S 2023 Blue', 'Sportster™ S là chương đầu tiên trong cuốn sách ho...', 649000000, 50, '001', '001', 'bp4.jpg', 1),
('015', 'Harley Dadvinson Road King Special Yellow', '', 900000000, 50, '001', '002', '015.png', 1),
('016', 'Harley Dadvinson Road King Special Black', '', 900000000, 50, '001', '002', '016.png', 1),
('017', 'Harley Dadvinson Road King Special Blue', '', 900000000, 50, '001', '002', '017.png', 1),
('018', 'Harley Dadvinson Road Glide Special Red', '', 900000000, 50, '001', '002', '018.png', 1),
('019', 'Harley Dadvinson Road Glide Special Black', '', 900000000, 50, '001', '002', '019.png', 1),
('020', 'Softail Standard 2023 Black', '', 700000000, 50, '001', '003', '020.png', 1),
('021', 'Softail Standard 2023 Red', '', 750000000, 50, '001', '003', '021.png', 1),
('022', 'Softail Standard 2023 Grey', '', 750000000, 50, '001', '003', '022.png', 1),
('023', 'Adventure Touring 2023 Black', '', 880000000, 50, '001', '004', '023.png', 1),
('024', 'Adventure Touring 2023 Yellow', '', 885000000, 50, '001', '004', '024.png', 1),
('026', 'Adventure Touring 2023 Grey', '', 889000000, 50, '002', '004', '025.png', 1),
('034', 'Test2', '', 1200000000, 50, '002', '003', '034.jpg', 1),
('036', 'Test1', '', 1200000000, 50, '002', '001', '036.jpg', 1),
('037', 'Test3', '', 1200000000, 50, '002', '001', '037.jpg', 1),
('039', 'Test4', '', 1200000000, 50, '002', '005', '039.jpg', 1),
('041', 'Test5', '', 1200000000, 50, '003', '002', '041.jpg', 1),
('044', 'Test6', '', 1200000000, 50, '003', '003', '044.png', 1),
('046', 'Test7', '', 1200000000, 50, '003', '001', '046.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receiptID` int(11) NOT NULL,
  `userName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `receiptTotal` int(11) NOT NULL,
  `receiptDate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receiptID`, `userName`, `firstName`, `lastName`, `country`, `address`, `phone`, `email`, `description`, `receiptTotal`, `receiptDate`, `status`) VALUES
(1, 'minhminion', 'Lưu', 'Phan Phong', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'minhminion2015@gmail.com', 'asdsa', 13455500, '2019-05-11 04:27:44', 1),
(2, 'minhminion', 'Lưu', 'Phan Phong', 'TP.Hồ Chí Minh', 'dwad', '0934837765', 'minhminion2015@gmail.com', 'adsdsa', 13455500, '2019-04-11 04:29:07', 1),
(3, 'minhminion', 'Lưu', 'Phan Phong', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'minhminion2015@gmail.com', 'dwad', 7548000, '2019-05-11 06:27:58', 1),
(4, 'minhminion', 'Lưu', 'Phan Phong', 'TP.Hồ Chí Minh', 'dasda', '00000000000', 'minhminion2015@gmail.com', '', 13455500, '2018-06-12 04:04:49', 1),
(5, 'minhminion', 'Lưu', 'Phan Phong', 'TP.Hồ Chí Minh', '282 Nguyễn Tri Phương', '0934837765', 'minhminion2015@gmail.com', 'Em đặt cho vui ', 14637000, '2019-12-14 05:53:49', 1),
(6, 'emtoi', 'Em ', 'Tôi', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'emtoi@yahoo.com.vn', 'Em đặt cho vui thôi ạ', 13455500, '2019-05-14 13:50:01', 1),
(7, 'minhminion', 'Lưu', 'Bị', 'TP.Hồ Chí Minh', '001 Nguyễn Trãi ', '0934837765', 'minhminion2015@gmail.com', 'Em lại đặt cho vui', 38233000, '2019-05-15 11:01:44', 1),
(8, 'Saler', 'TốngTuấn', 'Vũ', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', 'sale123@gmail.com', 'asdsad', 8984500, '2019-05-15 15:10:21', 1),
(9, 'Saler', 'TốngTuấn', 'ABC', 'TP.Hồ Chí Minh', 'dasds', '1231', 'sale123@gmail.com', '', 3697500, '2019-05-15 15:11:47', 1),
(10, '3wind', 'TốngTuấn', 'Vũ', 'TP.Hồ Chí Minh', 'dasdas', '0934837765', '3wind@gmail.com', 'asdsda', 16107500, '2019-05-15 15:18:56', 0);

--
-- Triggers `receipt`
--
DELIMITER $$
CREATE TRIGGER `DeleteReceipt` BEFORE DELETE ON `receipt` FOR EACH ROW DELETE FROM receiptdetail WHERE receiptdetail.receiptID = OLD.receiptID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `receiptdetail`
--

CREATE TABLE `receiptdetail` (
  `receiptID` int(11) NOT NULL,
  `productID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receiptdetail`
--

INSERT INTO `receiptdetail` (`receiptID`, `productID`, `productName`, `quality`, `price`, `total`) VALUES
(1, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(1, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(1, '005', 'Sportster  S 2023 Grey', 1, 630000000, 630000000),
(2, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(2, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(2, '005', 'Sportster  S 2023 Grey', 1, 630000000, 630000000),
(3, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(4, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(4, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(4, '005', 'Sportster  S 2023 Grey', 1, 630000000, 630000000),
(5, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(5, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(5, '005', 'Sportster  S 2023 Grey', 1, 630000000, 630000000),
(6, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(6, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(6, '005', 'Sportster  S 2023 Grey', 1, 630000000, 630000000),
(7, '002', 'Nightster Special 2023 Black', 1, 589000000, 589000000),
(7, '003', 'Nightster 2023 Red', 1, 500000000, 500000000),
(7, '018', 'Razer BlackWidow X Chroma Mercury Edition', 2, 3890000, 7780000),
(7, '041', 'Asus ROG Strix Fusion 300', 1, 2990000, 2990000),
(7, '044', 'Logitech G933', 1, 4000000, 4000000),
(7, '046', 'Razer Kraken Tournament Green', 6, 2690000, 16140000),
(8, '013', 'Razer Blackwidow Tournament Quartz Pink Edition', 1, 3390000, 3390000),
(8, '017', 'Razer Blackwidow Elite', 1, 4490000, 4490000),
(8, '046', 'Razer Kraken Tournament Green', 1, 2690000, 2690000),
(9, '036', 'Razer Lancehead Tournament Edition', 1, 2000000, 2000000),
(9, '037', 'Razer Mamba Elite', 1, 2350000, 2350000),
(10, '009', 'Corsair K95 RGB Platinum Gunmetal', 1, 5190000, 5190000),
(10, '017', 'Razer Blackwidow Elite', 1, 4490000, 4490000),
(10, '034', 'Logitech G903 Lightspeed Wireless', 1, 3790000, 3790000),
(10, '039', 'SteelSeries Rival 650', 1, 2790000, 2790000),
(10, '046', 'Razer Kraken Tournament Green', 1, 2690000, 2690000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userPass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userAuthentication` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPass`, `userAuthentication`, `state`) VALUES
('009', '3wind', '$2y$10$ziLl0.mIuvg/2TCWizL54.i9eu6vAkZ2PVqbyS37ydfRt3Hzg.age', '2', 1),
('0012', 'chinguyen', '$2y$10$n/BzqyBkC9yrWudn4SDzZuJya5jrSxzCLGoGfmxVmLMIa5BaY75mi', '1', 1),
('004', 'emtoi', '$2y$10$lsuE8ygqk6MaofLqdVzXwO71Ti.NZlDW/iBdg/OFrkwkbmBjSLZBi', '2', 1),
('007', 'emyeudau', '$2y$10$DxouoqYKDW2YMEgqnFE5IO4QrZo/y6fgKiZ8gSfsUb1q.Z56SFg3K', '2', 1),
('008', 'maitram', '$2y$10$d3tdkpL.Mosoy4NXlb3RiuyPidMrIZtrNaJAKyOFjfU5L4yu05LmG', '2', 1),
('001', 'minhminion', '$2y$10$x2vtcz9pLVTYZfQL/zSTuePwlm9F0LC/BZPJu67CV4BjpSoGxrgH.', '0', 1),
('006', 'Mongg', '$2y$10$MIW.ipx6J1OYWxFdip1sc.DGkzLRVR2Uir34r8CpmY73so0v0ES/.', '2', 1),
('0023', 'quocle', '$2y$10$HXiAScwOcJlpN12TPVyooOfFvUsqtLaUfWR/k7jzp4f.rhjaSO.qK', '1', 1),
('005', 'Saler', '$2y$10$lHg0ItOfCeGXzcfnxkKTZuAvBV0o1/js3m.E8XtlglPfA7rSkJYza', '1', 1),
('002', 'thanos', '$2y$10$4bXZG2f826LiZ8JZHbpolucNwWx558vBockiOnuaygvKL8C4rSGxS', '1', 1),
('003', 'thor123', '$2y$10$qe2nznYrdti6zsLjTXNSWO5T8ZJiNJvxdCZoP8yKWrhmCuKSXG3B.', '2', 1),
('0013', 'thuanquoc', '$2y$10$yFlYDF8nxwdGBmtmfvJ64O.PURB2LcDlKQx6WoEGsRJqFkP22xo1e', '2', 1),
('0019', 'tuanvu123', '$2y$10$rHe0MO/U11X99dejSfwM1Om4DvEpKN12uVyj8FLG5CjwQBK5ANzau', '0', 1),
('0011', 'vantu', '$2y$10$7iK2/9mpr7WiOZX1hPr5i.y2UY54nLW0XkyZM5UbHXpuK31gVQY6K', '1', 1),
('0010', 'vutong', '$2y$10$gvaiTj9NMl5gF7rCh0/YCOuCuDC5NL2D6pFgN03eKYhFxynfxCW0u', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`authenID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billID`),
  ADD KEY `billPurchaser` (`billPurchaser`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `cetorgry`
--
ALTER TABLE `cetorgry`
  ADD PRIMARY KEY (`cetorgryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `FK_Brand` (`productBrand`) USING BTREE,
  ADD KEY `FK_Cetogry` (`productCetorgry`) USING BTREE;

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receiptID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userName_2` (`userName`),
  ADD KEY `receiptDate` (`receiptDate`);

--
-- Indexes for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD PRIMARY KEY (`receiptID`,`productID`) USING BTREE,
  ADD KEY `receiptID` (`receiptID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`) USING BTREE,
  ADD KEY `userAuthentication` (`userAuthentication`),
  ADD KEY `userID` (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productBrand`) REFERENCES `brand` (`brandID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`productCetorgry`) REFERENCES `cetorgry` (`cetorgryID`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `receiptdetail`
--
ALTER TABLE `receiptdetail`
  ADD CONSTRAINT `receiptdetail_ibfk_1` FOREIGN KEY (`receiptID`) REFERENCES `receipt` (`receiptID`),
  ADD CONSTRAINT `receiptdetail_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userAuthentication`) REFERENCES `authentication` (`authenID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
