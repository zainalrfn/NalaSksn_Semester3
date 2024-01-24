-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: db_vote
-- ------------------------------------------------------
-- Server version	8.0.20
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `tb_calon`
--
DROP TABLE IF EXISTS `tb_calon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_calon` (
  `id_calon` int NOT NULL AUTO_INCREMENT,
  `nama_calon` varchar(100) NULL,
  `foto_calon` varchar(200) NULL,
  `keterangan` blob,
  `status` enum('0', '1') NULL,
  PRIMARY KEY (`id_calon`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_calon`
--
LOCK TABLES `tb_calon` WRITE;
/*!40000 ALTER TABLE `tb_calon` DISABLE KEYS */
;
INSERT INTO `tb_calon`
VALUES (
    1,
    'Ipay',
    'foto1.jpg',
    _binary 'kandidat ipay 1',
    '1'
  ),
(
    2,
    'Gunawan',
    'foto2.jpg',
    _binary 'kandidat gunawan 2\r\nok kaka',
    '1'
  ),
(
    3,
    'Raffi',
    'foto3.jpg',
    _binary 'kandidat 3 raffi',
    '1'
  ),
(
    4,
    'Wawan',
    'jeruk.png',
    _binary 'kandidat wawan',
    '1'
  ),
(
    5,
    'Jaka',
    'semangka.jpg',
    _binary 'keterangan jaka\r\nbeneran',
    '1'
  ),
(
    6,
    'Melon Tembok',
    'melon.jpg',
    _binary 'test aja nih\r\nkaka',
    '1'
  ),
(
    7,
    'Partai Durian',
    'durian.jpg',
    _binary 'ket :\r\npartai durian',
    '1'
  ),
(
    8,
    'Partai Jambu',
    'jambu.jpg',
    _binary 'ket \r\nPartai Jambu',
    '1'
  ),
(
    9,
    'Partai Kelengkeng',
    'kelengkeng.png',
    _binary 'ket\r\nPartai Kelengkeng',
    '1'
  ),
(
    10,
    'Partai Nangka',
    'nangka.jpg',
    _binary 'ket\r\nPartai Nangka',
    '0'
  ),
(
    11,
    'Partai Pisang',
    'pisang.png',
    _binary 'ket\r\nPartai Pisang',
    '1'
  ),
(
    12,
    'evoting',
    'evoting.png',
    _binary 'evoting test',
    '1'
  );
/*!40000 ALTER TABLE `tb_calon` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `tb_daftarvote`
--
DROP TABLE IF EXISTS `tb_daftarvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_daftarvote` (
  `daftarvote_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) NULL,
  `keterangan` varchar(255) NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `status_id` enum('0', '1', '2') NULL,
  `flag_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`daftarvote_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_daftarvote`
--
LOCK TABLES `tb_daftarvote` WRITE;
/*!40000 ALTER TABLE `tb_daftarvote` DISABLE KEYS */
;
INSERT INTO `tb_daftarvote`
VALUES (
    1,
    'Pemilihan Ketua DPC Jakarta',
    'Pemilihan Ketua DPC Jakarta',
    '2021-02-22 05:27:00',
    '2021-02-26 19:00:27',
    '1',
    1
  ),
(
    2,
    'Pemilihan Ketua DPD Jawa Barat',
    'Pemilihan Ketua DPD Jawa Barat 1',
    '2021-02-23 17:25:00',
    '2021-03-02 22:25:40',
    '1',
    1
  ),
(
    3,
    'Pemilihan Kepala Desa',
    'Pemilihan Kepala Desa',
    '2021-03-01 16:58:00',
    '2021-03-01 17:58:00',
    '1',
    1
  ),
(
    4,
    'test3',
    'test3',
    '2021-03-01 20:51:00',
    '2021-03-02 20:51:00',
    '1',
    9
  );
/*!40000 ALTER TABLE `tb_daftarvote` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `tb_pengguna`
--
DROP TABLE IF EXISTS `tb_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_pengguna` (
  `id_pengguna` int NOT NULL AUTO_INCREMENT,
  `nama_pengguna` varchar(100) NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NULL,
  `level` enum('Administrator', 'Petugas', 'Pemilih') NULL,
  `status` enum('1', '0') NULL,
  `jenis` enum('PAN', 'PST') NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE,
  UNIQUE KEY `username` (`username`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_pengguna`
--
LOCK TABLES `tb_pengguna` WRITE;
/*!40000 ALTER TABLE `tb_pengguna` DISABLE KEYS */
;
INSERT INTO `tb_pengguna`
VALUES (
    1,
    'admin',
    'admin',
    '123',
    'Administrator',
    '1',
    'PAN'
  ),
(2, 'kaka', 'kaka', '1234', 'Pemilih', '1', 'PST'),
(3, 'budi', 'budi', '1234', 'Pemilih', '1', 'PST'),
(4, 'danish', 'danish', '123', 'Petugas', '1', 'PAN'),
(5, 'wati', 'wati', '1234', 'Pemilih', '1', 'PST'),
(6, 'rudi', 'rudi', '1234', 'Pemilih', '1', 'PST'),
(
    8,
    'admin2',
    'admin2',
    '123',
    'Administrator',
    '1',
    'PAN'
  ),
(35, 'jaja', 'jaja', '1234', 'Pemilih', '1', 'PST'),
(36, 'wahyu', 'wahyu', '1234', 'Pemilih', '1', 'PST'),
(37, 'jarwo', 'jarwo', '1234', 'Pemilih', '1', 'PST'),
(39, 'test2', 'test2', '5H8H6', 'Pemilih', '1', 'PST'),
(40, 'wawa', 'wawa', 'HD85F', 'Pemilih', '1', 'PST');
/*!40000 ALTER TABLE `tb_pengguna` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `tb_vote`
--
DROP TABLE IF EXISTS `tb_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_vote`  (
  `id_vote` int(11) NOT NULL AUTO_INCREMENT,
  `daftarvote_id` int(11) NULL DEFAULT NULL,
  `id_calon` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `id_pemilih` int(11) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_vote`) USING BTREE,
  UNIQUE INDEX `daftarvote`(`daftarvote_id`, `id_pemilih`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 842 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_vote`
--
LOCK TABLES `tb_vote` WRITE;
/*!40000 ALTER TABLE `tb_vote` DISABLE KEYS */
;
INSERT INTO `tb_vote`
VALUES (1, 1, '2', 2, '2021-02-22 16:15:45'),
(2, 1, '2', 3, '2021-02-25 13:21:51'),
(3, 1, '1', 1, '2021-02-25 15:22:37'),
(4, 2, '4', 1, '2021-03-01 08:31:47'),
(5, 2, '1', 3, '2021-03-01 08:35:46'),
(6, 2, '1', 2, '2021-03-01 08:49:21'),
(8, 2, '3', 6, '2021-03-01 11:51:00'),
(9, 2, '4', 5, '2021-03-01 11:52:54'),
(10, 2, '1', 8, '2021-03-01 11:57:22'),
(11, 2, '5', 35, '2021-03-01 11:59:19'),
(12, 3, '3', 3, '2021-03-01 17:06:49'),
(13, 3, '4', 5, '2021-03-01 17:08:00'),
(14, 3, '3', 6, '2021-03-01 17:08:30'),
(15, 3, '3', 35, '2021-03-01 17:08:52'),
(16, 3, '6', 1, '2021-03-01 17:10:03');
/*!40000 ALTER TABLE `tb_vote` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `tb_votekandidat`
--
DROP TABLE IF EXISTS `tb_votekandidat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_votekandidat` (
  `votekandidat_id` int NOT NULL AUTO_INCREMENT,
  `daftarvote_id` int DEFAULT NULL,
  `id_calon` int DEFAULT NULL,
  `no_urut` int DEFAULT NULL,
  `flag_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`votekandidat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_votekandidat`
--
LOCK TABLES `tb_votekandidat` WRITE;
/*!40000 ALTER TABLE `tb_votekandidat` DISABLE KEYS */
;
INSERT INTO `tb_votekandidat`
VALUES (1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 2, 3, 1, 1),
(4, 2, 4, 2, 1),
(5, 2, 1, 3, 1),
(6, 2, 2, 4, 9),
(7, 2, 5, 4, 9),
(8, 2, 6, 6, 9),
(12, 2, 2, 4, 9),
(13, 2, 5, 4, 1),
(14, 2, 6, 6, 9),
(15, 1, 7, NULL, 1),
(16, 3, 3, 1, 1),
(17, 3, 4, 2, 1),
(18, 3, 6, 3, 1),
(19, 3, 12, 4, 1);
/*!40000 ALTER TABLE `tb_votekandidat` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `tb_votepemilih`
--
DROP TABLE IF EXISTS `tb_votepemilih`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `tb_votepemilih` (
  `votepemilih_id` int NOT NULL AUTO_INCREMENT,
  `daftarvote_id` int DEFAULT NULL,
  `id_pemilih` int DEFAULT NULL,
  `flag_id` tinyint DEFAULT NULL,
  `status_id` enum('1', '2') NULL COMMENT '1 = BELUM MEMILIH / 2 = SUDAH MEMILIH',
  PRIMARY KEY (`votepemilih_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 ROW_FORMAT = DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `tb_votepemilih`
--
LOCK TABLES `tb_votepemilih` WRITE;
/*!40000 ALTER TABLE `tb_votepemilih` DISABLE KEYS */
;
INSERT INTO `tb_votepemilih`
VALUES (1, 1, 2, 1, '2'),
(2, 1, 3, 1, '2'),
(3, 1, 1, 1, '2'),
(4, 2, 1, 1, '2'),
(5, 2, 3, 1, '2'),
(6, 2, 2, 1, '2'),
(7, 2, 5, 1, '2'),
(8, 2, 6, 9, '2'),
(9, 2, 6, 1, '2'),
(11, 2, 8, 1, '2'),
(12, 2, 35, 1, '2'),
(13, 2, 36, 1, '1'),
(14, 1, 5, 1, '1'),
(15, 3, 3, 1, '2'),
(16, 3, 5, 1, '2'),
(17, 3, 6, 1, '2'),
(18, 3, 35, 1, '2'),
(19, 3, 1, 1, '2');
/*!40000 ALTER TABLE `tb_votepemilih` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Temporary view structure for view `v_vote`
--
DROP TABLE IF EXISTS `v_vote`;
/*!50001 DROP VIEW IF EXISTS `v_vote`*/
;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */
;
/*!50001 CREATE VIEW `v_vote` AS SELECT 
 1 AS `id_vote`,
 1 AS `daftarvote_id`,
 1 AS `id_calon`,
 1 AS `id_pemilih`,
 1 AS `date`,
 1 AS `nama_calon`,
 1 AS `foto_calon`,
 1 AS `keterangan`,
 1 AS `nama_pemilih`*/
;
SET character_set_client = @saved_cs_client;
--
-- Final view structure for view `v_vote`
--
/*!50001 DROP VIEW IF EXISTS `v_vote`*/
;
/*!50001 SET @saved_cs_client          = @@character_set_client */
;
/*!50001 SET @saved_cs_results         = @@character_set_results */
;
/*!50001 SET @saved_col_connection     = @@collation_connection */
;
/*!50001 SET character_set_client      = utf8mb4 */
;
/*!50001 SET character_set_results     = utf8mb4 */
;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */
;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ipay`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_vote` AS select `a`.`id_vote` AS `id_vote`,`a`.`daftarvote_id` AS `daftarvote_id`,`a`.`id_calon` AS `id_calon`,`a`.`id_pemilih` AS `id_pemilih`,`a`.`date` AS `date`,`b`.`nama_calon` AS `nama_calon`,`b`.`foto_calon` AS `foto_calon`,`b`.`keterangan` AS `keterangan`,`c`.`nama_pengguna` AS `nama_pemilih` from ((`tb_vote` `a` join `tb_calon` `b` on((`a`.`id_calon` = `b`.`id_calon`))) join `tb_pengguna` `c` on((`a`.`id_pemilih` = `c`.`id_pengguna`))) */
;
/*!50001 SET character_set_client      = @saved_cs_client */
;
/*!50001 SET character_set_results     = @saved_cs_results */
;
/*!50001 SET collation_connection      = @saved_col_connection */
;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2021-03-15  8:21:45