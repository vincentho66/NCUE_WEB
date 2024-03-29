-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021 年 06 月 10 日 16:03
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `group_14`
--
CREATE DATABASE IF NOT EXISTS `group_14` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `group_14`;

-- --------------------------------------------------------

--
-- 資料表結構 `item`
--

CREATE TABLE `item` (
  `ItemId` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `src` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `item`
--

INSERT INTO `item` (`ItemId`, `name`, `src`) VALUES
(1, 'Slacker', 'images/pic1.jpg'),
(2, 'Kids in America', 'images/pic2.jpg'),
(3, 'Tum Milo Toh Sahi', 'images/pic3.jpg'),
(4, 'American Zombie', 'images/pic4.jpg'),
(5, 'Dil Toh Bachha Hai J', 'images/pic5.jpg'),
(6, 'Arya 2', 'images/pic6.jpg'),
(7, 'Awara Paagal Deewana', 'images/pic7.jpg'),
(8, 'Her Fatal Flaw', 'images/pic8.jpg'),
(9, 'Kingsman: The Secret', 'images/pic9.jpg'),
(10, 'Battle of Britain', 'images/pic10.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `MemberId` int(11) NOT NULL,
  `account` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`MemberId`, `account`, `password`) VALUES
(1, 'member', 'member123456'),
(2, 'admin', 'admin123456'),
(3, 'testlogin', 'testlogin');

-- --------------------------------------------------------

--
-- 資料表結構 `shopcar`
--

CREATE TABLE `shopcar` (
  `ShopcarId` int(11) NOT NULL,
  `MemberId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `sold`
--

CREATE TABLE `sold` (
  `SoldId` int(11) NOT NULL,
  `MemberId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `sold`
--

INSERT INTO `sold` (`SoldId`, `MemberId`, `ItemId`) VALUES
(15, 1, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemId`),
  ADD KEY `ItemId` (`ItemId`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberId`),
  ADD KEY `account` (`account`);

--
-- 資料表索引 `shopcar`
--
ALTER TABLE `shopcar`
  ADD PRIMARY KEY (`ShopcarId`),
  ADD KEY `ShopcarID` (`ShopcarId`);

--
-- 資料表索引 `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`SoldId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item`
--
ALTER TABLE `item`
  MODIFY `ItemId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `MemberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shopcar`
--
ALTER TABLE `shopcar`
  MODIFY `ShopcarId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sold`
--
ALTER TABLE `sold`
  MODIFY `SoldId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
