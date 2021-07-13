-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-07-13 10:45:49
-- 服务器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `dream`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '账号',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '123456'),
(2, 'yfadmin', 'yfadmin');

-- --------------------------------------------------------

--
-- 表的结构 `dream_players`
--

CREATE TABLE `dream_players` (
  `id` int(11) NOT NULL,
  `player_serial` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手编号',
  `player_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手姓名',
  `player_sex` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手性别',
  `player_height` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手身高',
  `player_weight` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手体重',
  `san_wei` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手三围',
  `player_strong` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手特长',
  `player_magnum` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手代表作',
  `player_age` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手年龄',
  `player_vote` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '投票数',
  `player_stage` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手艺名',
  `player_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '参加角色',
  `player_voice` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '音频',
  `player_video` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '视频',
  `imgUrls` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手多张照片',
  `being_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '正在参加的类型',
  `being_movie` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '正在参加的电影',
  `player_tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手电话',
  `player_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `dream_players`
--

INSERT INTO `dream_players` (`id`, `player_serial`, `player_name`, `player_sex`, `player_height`, `player_weight`, `san_wei`, `player_strong`, `player_magnum`, `player_age`, `player_vote`, `player_stage`, `player_role`, `player_voice`, `player_video`, `imgUrls`, `being_type`, `being_movie`, `player_tel`, `player_email`) VALUES
(1, '01', '1', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '104', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(2, '02', '2', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '108', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(3, '03', '3', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(4, '04', '4', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(5, '05', '5', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(6, '06', '6', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(7, '07', '7', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(8, '08', '8', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(9, '09', '9', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(10, '010', '10', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '4', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(11, '011', '9', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(19, '012', '8', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(20, '013', '7', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(21, '014', '6', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(22, '015', '5', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247'),
(23, '016', '4', '男', '170cm', '60kg', '70cm-80cm-60cm', '腿特长', '飞哥的小黑', '19', '0', '飞哥', '张小雅', '9RvzZb7oXiD88b4d657702b65f1c21acf17bee6ef9cf.mp3', 'cuEDhDRdRbxC2554a9b599e17a643725e8494f7436bb.mp4', 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg,vvcFcJ3XCwpu0fea55cbb46c15245b7d8f418f96a742.png,C6xhqnR5E5Ci3a0e89008edd7a6157573b23d1437b5e.jpg,A14esYRy8Iz33a0e89008edd7a6157573b23d1437b5e.jpg,NsiECuPctKw3b73b618d800e6954913556c8ad7dd7e3.png,GKFLvlmcKQjP3a0e89008edd7a6157573b23d1437b5e.jpg', '电影', '《谁的青春不迷茫2》', '13663665247', '13663665247');

-- --------------------------------------------------------

--
-- 表的结构 `dream_title`
--

CREATE TABLE `dream_title` (
  `id` int(11) NOT NULL,
  `banner_imgs` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '轮播图片',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '标题',
  `pageView` int(100) NOT NULL COMMENT '浏览量',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
  `end_time` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '结束时间',
  `start_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '开始时间',
  `vote` int(100) NOT NULL COMMENT '票数',
  `players` int(100) NOT NULL COMMENT '所有选手',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `dream_title`
--

INSERT INTO `dream_title` (`id`, `banner_imgs`, `title`, `pageView`, `content`, `end_time`, `start_time`, `vote`, `players`, `type`) VALUES
(1, 'banner11622791371.png,banner21622791371.png,banner31622791371.png', '谁的青春不迷茫', 1910, '你不迷茫谁迷茫', '1624831200', '1622401200', 216, 16, '电影');

-- --------------------------------------------------------

--
-- 表的结构 `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `gift_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '礼物名称',
  `gift_price` int(255) NOT NULL COMMENT '礼物价格',
  `gift_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '礼物图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `gift`
--

INSERT INTO `gift` (`id`, `gift_name`, `gift_price`, `gift_img`) VALUES
(1, '皇冠', 999, '676c皇冠.svg'),
(2, '火箭', 499, 'f2b6火箭.svg'),
(3, '飞机', 199, '228d飞机.svg'),
(4, '跑车', 99, '00d8跑车.svg'),
(5, '钻石', 68, 'a52c钻石.svg'),
(6, '戒指', 18, 'c8f0戒指.svg'),
(7, '点赞', 6, '9227点赞.svg'),
(8, '鲜花', 1, 'ac44鲜花.svg');

-- --------------------------------------------------------

--
-- 表的结构 `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目名称',
  `slogan` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目口号',
  `aim` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目宗旨',
  `orientation` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目定位',
  `content_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容小标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目内容',
  `compere` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主持人',
  `broadcast` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '播出形式',
  `audiences` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '受众分析',
  `effect` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节目效果预测'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `holiday`
--

INSERT INTO `holiday` (`id`, `title`, `slogan`, `aim`, `orientation`, `content_title`, `content`, `compere`, `broadcast`, `audiences`, `effect`) VALUES
(1, '“秀出我最爱”想秀你就来', '“秀，秀，秀，别样历史展现我风采”', '给每个有古代情结的青年男女一个展示 自我喜爱的历史人物的舞台，中华民族上下五千年的悠 久历史 ，秦汉唐宋元明清，个性就要秀出来。给你一个 穿越历史的舞台，有梦就要秀出来。', '小时候，或许，每个人的心中都曾经幻 想自己能成为电视中的人物，为自己喜欢的角色打抱不 平，希望看到自己喜欢的结局。我们以优秀的策划团队 为后盾，只要你的梦想够独特又有创意就一定会展现在 舞台上。', '舞台我做主,跨时代发声,历史大考验,人物包装秀', '参赛者准备一个节目表演以戏说历史人物为主题。表演 要有故事情节，有戏剧性，其他不限。参加者可以自备 一段自拍的短片作为加分的亮点。配合着灯光，舞美设计等舞台布景尽量展现一个原汁原味的历史背景。评委 由经纪公司星探担任，每期六位参赛者在这一环节将有 一位淘汰。 , 五位选手结合自己在第一环节的表演现场演唱一首和自 己的表演相符的歌曲，意境相配即可。主要是考验一下 选手的演唱功底和即兴发挥。在这一环节将有两位选手 淘汰。 ,  结合选手的表演时代由评委出题。现场编故事：由主持 人给出几个关键词，要求必需把这几个词编进所选时代 的故事里。八卦大搜索：主持人出题主要是关于历史上 的趣事传闻由选手来判断是非。评委由历史学家担任， 淘汰两名选手。 ,每月有一次这个环节。每期留下一位实力最强的选手， 每月举行一次由演艺公司对他们进行重新包装，形象气 质大转变。历史体验真实穿越，尽享山水之色，征战戎 马生涯，玩穿越，品国韵。可以安排优秀者参与影视剧 演出，给他们一次更加真实的穿越之旅。', '出演过电视或电影节目，口才好。一 男一女，男的要长相有古代侠客风范，女的要古典气质 美女。', '每周六晚8点到八点五十五。节目时 长四十分钟，十五分钟插播广告。', '恶搞历史，属于新鲜事物年纪大的人或 许难以接受。因此，主要面向12至25岁青少年为主。潜 在受众：历史爱好者，批评家等。', '目前国内没有这一类的真人秀节目， 告别春的含羞，迎接夏的热情，相信这档选秀节目会在 今夏令观众眼前一亮。');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色图片',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名字',
  `role_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `role_con` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `role_img`, `role_name`, `role_number`, `role_con`) VALUES
(1, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '叶飞', '男1号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(3, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '小黑', '女1号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(4, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '大白', '男2号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(5, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '小白', '女2号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(9, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '叶飞', '男1号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(10, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '小黑', '女1号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(11, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '大白', '男2号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商'),
(12, 'Gol3jK8H8LMI3a0e89008edd7a6157573b23d1437b5e.jpg', '小白', '女2号', '从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商,从小生 活优越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优。 越,娇生惯养,父母经商从 小生活优越,娇生惯养,父母经 商从小生活优越,娇生惯养,父 母经商从小生活优越,娇生惯 养,父母经商从小生活优越,娇 生惯养,父母经商');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户标识',
  `players_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选手标识',
  `times` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '投票时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_openid`, `players_id`, `times`) VALUES
(1, '111111', '18', '30'),
(2, '222222', '8', '28'),
(3, '333333', '9', '28'),
(4, '6666666', '18', '30'),
(5, '777777', '15', '02'),
(8, '15735629946', '1', '13');

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '唯一标识，手机用户',
  `price` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '价钱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`id`, `phone`, `price`) VALUES
(1, '15735629946', '627'),
(2, '15735629947', '0'),
(3, '15735629949', '0');

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `dream_players`
--
ALTER TABLE `dream_players`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `dream_title`
--
ALTER TABLE `dream_title`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `dream_players`
--
ALTER TABLE `dream_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `dream_title`
--
ALTER TABLE `dream_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
