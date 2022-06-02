-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 6 月 02 日 12:09
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_review`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table_review`
--

CREATE TABLE `gs_an_table_review` (
  `id` int(12) NOT NULL,
  `book_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table_review`
--

INSERT INTO `gs_an_table_review` (`id`, `book_title`, `book_url`, `coment`, `date`) VALUES
(1, '[PHP最強本]', '[php@exmple.com]', '[これ一冊で完全網羅]', '2022-06-01 23:01:21'),
(2, 'HTML爆速学習', 'HTML@qqq.com', 'なかなか分厚い・・・', '2022-06-01 23:16:52'),
(3, '起業のファイナンス', 'https://www.amazon.co.jp/%E8%B5%B7%E6%A5%AD%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%8A%E3%83%B3%E3%82%B9-%E5%A2%97%E8%A3%9C%E6%94%B9%E8%A8%82%E7%89%88-%E7%A3%AF%E5%B4%8E%E5%93%B2%E4%B9%9F-ebook/dp/B011HON7B6/ref=sr_1_1?adgrpid=79516356362&gclid=Cj0KCQjwnNyUBhCZARIsAI9AYlFmsI2G48CZPej8veYVnGrjcfmjGaVgbTdGeEzPtM7n06EUTy7bpGAaAnDGEALw_wcB&hvadid=553966778339&hvdev=c&hvlocphy=1028853&hvnetw=g&hvqmt=e&hvrand=11517282240320061323&hvtargid=kwd-420221156052&hydadcr=4073_13159854&jp-ad-ap=0&keywords=%E8%B5%B7%E6%A5%AD%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%8A%E3%83%B3%E3%82%B9&qid=1654133485&sr=8-1', '起業家はもちろん、ベンチャーキャピタルやエンジェル投資家、弁護士、司法書士、公認会計士、税理士などからもご好評をいただいた前作の増補改訂版が登場。', '2022-06-02 10:31:47');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table_review`
--
ALTER TABLE `gs_an_table_review`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table_review`
--
ALTER TABLE `gs_an_table_review`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
