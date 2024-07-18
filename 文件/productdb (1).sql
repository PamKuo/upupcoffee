-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-18 11:51:40
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `productdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `meet_table`
--

CREATE TABLE `meet_table` (
  `cID` int(11) NOT NULL COMMENT '預約編號',
  `cname` varchar(40) NOT NULL COMMENT '預約姓名',
  `tel` varchar(10) NOT NULL COMMENT '預約電話',
  `cemail` varchar(50) NOT NULL COMMENT '預約信箱',
  `cpeople` int(2) NOT NULL COMMENT '預約人數',
  `cat` varchar(3) NOT NULL COMMENT '預約是否帶貓',
  `datepicker` date NOT NULL COMMENT '預約日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `meet_table`
--

INSERT INTO `meet_table` (`cID`, `cname`, `tel`, `cemail`, `cpeople`, `cat`, `datepicker`) VALUES
(1, '大明', '911444123', 'arjg55@gmail.com', 6, '帶貓', '2024-07-12'),
(2, 'ff', '911111111', '4546@gmail.com', 2, '帶貓', '2024-07-20'),
(3, 'hgfg', '0911111111', '56465@gmail.com', 10, '帶貓', '2024-07-23'),
(4, 'Chacha', '0911111111', 'faeaw21@gmail.com', 2, '不帶貓', '2024-07-30'),
(5, '415456', '0911111111', 'gds@gmail.com', 2, '帶貓', '2024-07-22'),
(6, 'Fly', '0911111111', 'afkjop@gmail.com', 2, '帶貓', '2024-08-04'),
(7, 'Lee', '0911111111', 'afsd22@gmail.com', 2, '帶貓', '2024-07-28'),
(8, 'Huang', '0977777777', 'sfkll@hotmail.com', 1, '帶貓', '2024-07-27'),
(9, '汪汪', '0911111111', 'wang@hotmail.com', 4, '帶貓', '2024-10-25'),
(10, 'chu', '0911444778', 'chu@gmail.com', 15, '帶貓', '2024-08-01'),
(11, 'nail', '0911111111', 'nail@gmail.com', 2, '帶貓', '2024-08-09'),
(12, 'tx', '0911111111', 'tx@hotmail.com', 10, '帶貓', '2024-08-04'),
(13, '11', '0999999999', '11@hotmail.com', 9, '不帶貓', '2024-08-04');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `ID` int(11) NOT NULL COMMENT '會員編號',
  `Username` varchar(128) NOT NULL COMMENT '會員帳號',
  `Password` varchar(128) NOT NULL COMMENT '會員密碼',
  `Email` varchar(128) NOT NULL COMMENT '會員email',
  `UID01` varchar(10) NOT NULL COMMENT 'UID01簽證',
  `UID02` varchar(10) NOT NULL COMMENT 'UID02簽證',
  `UID03` varchar(10) NOT NULL COMMENT 'UID03簽證',
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '會員註冊時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`ID`, `Username`, `Password`, `Email`, `UID01`, `UID02`, `UID03`, `Created_at`) VALUES
(5, 'ouch01', '$2y$10$cnvLgrsxZs6bK7CaQpZMmezQJXmelpqBq9nQON4DwISQ4p2ZBl0de', 'ouch01@gmail.com', '', '', '', '2024-07-08 03:47:39'),
(6, 'flyfly', '$2y$10$aBrNAWBV.bmBLsckSSoGMOnq9KbR5mcjUmG49FsRRRKjDx54veLq.', 'fly66@gmail.com', 'a0ebb8efa9', 'a56b8e69f4', '4063204234', '2024-07-08 03:49:02'),
(7, 'napfuu', '$2y$10$nWcn4z2yMJMV8wl7TwBfoOqRcDCVroxkTdfb7NMhHc6oV4DoBmhGW', 'fufu@hotmail.com', 'e5e039371e', '9fe9ef86e8', '994ca1e97c', '2024-07-08 03:49:40'),
(8, 'mig', '$2y$10$UinTyj8gGupKQhNfN32l8O6gMxcvU7GxKEzVCWxID3nnI/xOstcuO', 'mig@gmail.com', 'd2dcd9b36a', '', '', '2024-07-15 05:23:00'),
(9, 'flyfly02', '$2y$10$0WYclJaafN55WmjWD1ipUenX/NphOifBt1w7hvHBixzUswwVNfLYS', 'flyfly02@gmail.com', '6efe80c425', '', '', '2024-07-15 05:53:50'),
(10, 'lily', '$2y$10$ircO1O4/a4zXcuFckxJNQuin9wRNBUnBQ5D9Ljc4o96dApguA13zu', 'lily@gmail.com', '6609b5beea', '97b23f02ed', '63ddc83c53', '2024-07-17 03:05:30'),
(11, 'chu', '$2y$10$VrxAUMXlgbfyBS0c4/Mja.W5oHV0VfjOY0xBrXrXzbWiMtnXpm76W', 'chu@gmail.com', '6f3da28426', '0e2e79fc17', 'b2281f6d39', '2024-07-17 05:47:39');

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `total_amount`, `order_date`) VALUES
(1, 3698.00, '2024-07-12 07:22:24'),
(2, 300.00, '2024-07-12 07:24:17'),
(3, 86.00, '2024-07-12 07:44:06'),
(5, 26.00, '2024-07-16 07:30:52'),
(6, 306.00, '2024-07-16 08:24:26'),
(7, 306.00, '2024-07-16 08:24:35'),
(8, 240.00, '2024-07-16 08:25:13'),
(9, 123.00, '2024-07-17 00:52:41'),
(10, 20.00, '2024-07-17 00:58:30'),
(11, 46.00, '2024-07-17 01:24:40'),
(12, 20.00, '2024-07-17 01:25:18'),
(13, 20.00, '2024-07-17 01:30:05'),
(14, 20.00, '2024-07-17 01:40:07'),
(15, 360.00, '2024-07-17 01:41:56'),
(16, 6.00, '2024-07-17 02:36:07'),
(17, 16.00, '2024-07-17 07:02:55'),
(18, 1920.00, '2024-07-17 07:33:14');

-- --------------------------------------------------------

--
-- 資料表結構 `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 40, 3, 66.00),
(2, 1, 41, 5, 700.00),
(3, 2, 43, 3, 20.00),
(4, 2, 44, 2, 120.00),
(5, 3, 43, 1, 20.00),
(6, 3, 40, 1, 66.00),
(8, 5, 43, 1, 20.00),
(9, 5, 37, 2, 3.00),
(10, 6, 44, 2, 120.00),
(11, 6, 40, 1, 66.00),
(12, 7, 44, 2, 120.00),
(13, 7, 40, 1, 66.00),
(14, 8, 44, 2, 120.00),
(15, 9, 42, 1, 120.00),
(16, 9, 37, 1, 3.00),
(17, 10, 43, 1, 20.00),
(18, 11, 43, 2, 20.00),
(19, 11, 37, 2, 3.00),
(20, 12, 43, 1, 20.00),
(21, 13, 43, 1, 20.00),
(22, 14, 43, 1, 20.00),
(23, 15, 42, 3, 120.00),
(24, 16, 37, 2, 3.00),
(25, 17, 46, 1, 10.00),
(26, 17, 37, 2, 3.00),
(27, 18, 44, 1, 120.00),
(28, 18, 38, 2, 900.00);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL COMMENT '產品序號',
  `Pname` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '產品名稱',
  `Price` int(11) NOT NULL COMMENT '產品價格',
  `Pnum` int(11) NOT NULL COMMENT '產品數量',
  `Premark` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '產品備註',
  `Pimg` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '圖片路徑',
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '產品建檔時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`ID`, `Pname`, `Price`, `Pnum`, `Premark`, `Pimg`, `Created_at`) VALUES
(32, '緞帶', 150, 10, '富有彈性', 'https://images.unsplash.com/photo-1583083644579-4f0695a59a17', '2024-07-11 05:36:44'),
(33, '貓草(盆)', 50, 20, '長青商品', 'https://plus.unsplash.com/premium_photo-1661636014754-515f4e4c8147', '2024-07-11 05:38:13'),
(34, '慶生小帽帽', 80, 20, '有帶子不容易鬆脫', 'https://plus.unsplash.com/premium_photo-1691869263954-804734a474fd', '2024-07-11 05:39:27'),
(35, '道具花朵', 66, 10, '塑膠花朵不會使貓過敏', 'https://images.unsplash.com/photo-1625144779931-d442dd9fcb74', '2024-07-11 05:40:17'),
(36, '手工陶瓷杯', 300, 16, '每一個杯子都獨一無二', 'https://images.unsplash.com/photo-1695142258472-0cf0c8599499', '2024-07-11 05:42:19'),
(37, '紙袋', 3, 89, '便宜又好玩', 'https://images.unsplash.com/photo-1611600326998-c33f785450e0', '2024-07-11 05:47:29'),
(38, '外出包', 900, 47, '重量輕薄', 'https://images.unsplash.com/photo-1527150602-a98f7a6f2746', '2024-07-11 05:49:57'),
(39, '乾燥肉團子', 70, 77, '副食品', 'https://images.unsplash.com/photo-1577349516274-37ff88a53627', '2024-07-11 05:53:18'),
(40, '肉泥冰棒', 66, 26, '副食品', 'https://images.unsplash.com/photo-1604372974210-07d4d7d7d9a2', '2024-07-11 05:55:13'),
(41, '貓跳台', 700, 10, '防抓、耐用', 'https://plus.unsplash.com/premium_photo-1664371206027-c5accf6fffd2', '2024-07-11 05:56:26'),
(42, '逗貓棒', 120, 76, '好玩、耐用', 'https://images.unsplash.com/photo-1615332591802-dddd86b35238', '2024-07-11 05:58:02'),
(43, '紙箱', 20, 74, '再大都可fit in', 'https://images.unsplash.com/photo-1615678857339-4e7e51ce22db', '2024-07-11 05:59:01'),
(44, '原創公仔', 120, 29, '小擺飾', 'https://images.unsplash.com/photo-1630549316063-7ae02749d2cc', '2024-07-11 06:00:13'),
(45, '鈴鐺', 70, 16, '金屬製品', 'https://images.unsplash.com/photo-1516748230650-de61d8b77545', '2024-07-11 06:01:57'),
(46, '聞香paw', 10, 98, '貓咪願意才能聞喔', 'https://images.unsplash.com/photo-1570579380989-4ad216439577', '2024-07-17 07:02:30');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `meet_table`
--
ALTER TABLE `meet_table`
  ADD PRIMARY KEY (`cID`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `meet_table`
--
ALTER TABLE `meet_table`
  MODIFY `cID` int(11) NOT NULL AUTO_INCREMENT COMMENT '預約編號', AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '會員編號', AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '產品序號', AUTO_INCREMENT=47;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
