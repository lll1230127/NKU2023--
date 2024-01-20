-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3308
-- 生成日期： 2024-01-20 17:38:44
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `covid`
--

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `video_id` varchar(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(512) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `has_thumbnail` tinyint(1) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`video_id`, `title`, `description`, `tags`, `status`, `has_thumbnail`, `video_name`, `created_at`, `updated_at`, `created_by`) VALUES
('iUwK7DIv', '核污染.mp4', '央视报道', '', 1, 0, 'b0d4466604004578ab0f8bcd95a638ed_h2642000000nero_aac16-1.mp4', 1705768666, 1705768683, 29),
('xRXrAnLz', '核污染2.mp4', '央视新闻', '', 1, 0, 'ba32e0b9a31f464181fb512eb24781c5_h2642000000nero_aac16.mp4', 1705768603, 1705768644, 29);

--
-- 转储表的索引
--

--
-- 表的索引 `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`) USING BTREE,
  ADD KEY `idx-video-created_by` (`created_by`) USING BTREE;
ALTER TABLE `video` ADD FULLTEXT KEY `title` (`title`,`description`,`tags`);

--
-- 限制导出的表
--

--
-- 限制表 `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk-video-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
