-- MySQL dump 10.13  Distrib 5.7.36, for osx10.16 (x86_64)
--
-- Host: 127.0.0.1    Database: prueba
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2021_11_05_133753_create_tasks_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('02890daeafa9c3b520a9df54fae8fe072e05ed0ead101bee6f631d3d5a8c63640defd14fec37186f',2,3,'Personal Access Token','[]',0,'2021-11-16 11:41:59','2021-11-16 11:41:59','2022-11-16 11:41:59'),('05cbfb474f9781795a0965395ebe3308257dc4443b43a7d905098ee894b01082dc0cfaed7b5a5943',2,3,'Personal Access Token','[]',0,'2021-11-16 11:51:59','2021-11-16 11:51:59','2022-11-16 11:51:59'),('06eec80d4945d4725e8194e9fd84a1bc5e988daaba70e7d4dedd57bbbbc3838b96028c2a26a73308',3,3,'Personal Access Token','[]',0,'2021-11-16 11:42:54','2021-11-16 11:42:54','2022-11-16 11:42:54'),('0cc5c61aa2c10364779998cdf33f5fa6649b4f57f4389121b6a3561242c1e46cf5ba27de7843657c',2,3,'Personal Access Token','[]',0,'2021-11-16 11:25:52','2021-11-16 11:25:52','2022-11-16 11:25:52'),('12629daf2c063431735615759dbf81fd4c5cc88637b9e8cd6e538e11726714e8d7fb349001740c2b',2,3,'Personal Access Token','[]',0,'2021-11-15 19:33:42','2021-11-15 19:33:42','2022-11-15 19:33:42'),('13dd51525a6456667d602ee86d4f589838ed814fd7e38a5961bfb7204a810a08cce279c5df182a50',2,3,'Personal Access Token','[]',0,'2021-11-15 20:26:59','2021-11-15 20:26:59','2022-11-15 20:26:59'),('22c97de92fc07268983a7598dee0cd1288d8fc3d3bafd666ebcdb7441cbc643c76d47a9b08ce4984',2,3,'Personal Access Token','[]',0,'2021-11-15 19:40:34','2021-11-15 19:40:34','2022-11-15 19:40:34'),('271d185e9eee08fe289a3159ea6fcbfed17409f15d8363ec9f7defa9c14fb9113b3e365c49c27a4d',2,3,'Personal Access Token','[]',0,'2021-11-15 20:22:13','2021-11-15 20:22:13','2022-11-15 20:22:13'),('27f90cf8d31563618883a6b3a0922701aabb7d29597cbd975d368d0cc40f1aa1883290c094c78cbf',2,3,'Personal Access Token','[]',0,'2021-11-15 19:37:13','2021-11-15 19:37:13','2022-11-15 19:37:13'),('3067a7245382648ecb439eee94758c9b746007fb508f99cc924cb9679a4e0a945e4d12806ed59b63',2,3,'Personal Access Token','[]',1,'2021-11-16 11:55:18','2021-11-16 11:55:18','2022-11-16 11:55:18'),('364b38a18bfff16f99579e70b51e28fe7a12fd0fe58da2f0526390e238bec1d28a24743a9c9f5d57',3,3,'Personal Access Token','[]',0,'2021-11-16 12:09:39','2021-11-16 12:09:39','2022-11-16 12:09:39'),('365730289dca05dd11d5490638e0fd5808320659675965fdac19a54eb5bbb4da8e68d814c6db0dfd',2,3,'Personal Access Token','[]',0,'2021-11-16 12:04:17','2021-11-16 12:04:17','2022-11-16 12:04:17'),('3909a0ac2fba4a18b2e9c81590a8f87aed3b3f5830a5507634059b425172a16b673a2fde320afc9e',2,3,'Personal Access Token','[]',1,'2021-11-15 20:09:10','2021-11-15 20:09:10','2022-11-15 20:09:10'),('3ec0351eae3bebfd1c3aec196f0201534afa7a7b6f47a5a203f54aacf6fe83b4bf74786ca10da827',2,3,'Personal Access Token','[]',0,'2021-11-15 20:14:52','2021-11-15 20:14:52','2022-11-15 20:14:52'),('41ac3c03eee4b60a9e7e243b607c014e6149bdb89742b5f329423adddbaf7351e7d12cbf18a610b9',2,3,'Personal Access Token','[]',0,'2021-11-16 11:30:26','2021-11-16 11:30:26','2022-11-16 11:30:26'),('420e7140e372b06566a0148acc1070c0292974bc57bcffeb796a6cc1515ed9e07549a22f66e39579',2,3,'Personal Access Token','[]',0,'2021-11-16 12:01:44','2021-11-16 12:01:44','2022-11-16 12:01:44'),('431ded55e8885919c7c1b8ef24f68a0d1ca766ca8dc5659d957d167c0033e362142325040237cb68',2,3,'Personal Access Token','[]',0,'2021-11-15 20:08:30','2021-11-15 20:08:30','2022-11-15 20:08:30'),('4745927f80bea3f097a8fc70be225cb71b55067761c761d32c0b59d461ab8fd81f75c5928c23812e',2,3,'Personal Access Token','[]',0,'2021-11-16 11:52:36','2021-11-16 11:52:36','2022-11-16 11:52:36'),('54b111fe5973018d3e3d7d21d66a71c9cbd3797b1025caa819124f770735f10f978c3bdc26152940',3,3,'Personal Access Token','[]',0,'2021-11-16 11:56:18','2021-11-16 11:56:18','2022-11-16 11:56:18'),('6644a355ee214b48f5536e7a8637084dde434b772ced496883f75c9caea7f57a782c14392de0be27',2,3,'Personal Access Token','[]',0,'2021-11-16 12:06:25','2021-11-16 12:06:25','2022-11-16 12:06:25'),('6c2491df4245c9da2beb9a3575a87ad75f6b0d1125d8691cc54c6c8afa82aae98064f524cf32f75c',3,3,'Personal Access Token','[]',1,'2021-11-16 11:28:29','2021-11-16 11:28:29','2022-11-16 11:28:29'),('780c3adfb65cc92f47ba876366b9e0f18092e3548d215beaac30b854559985abeef04b3773f80f06',2,3,'Personal Access Token','[]',0,'2021-11-16 11:53:05','2021-11-16 11:53:05','2022-11-16 11:53:05'),('7930e6fd96c0f207134057c322672f0f8d9a4eaeae48ba5101ec3722a702d93e692ef5bdb8c188ca',2,3,'Personal Access Token','[]',0,'2021-11-16 12:00:49','2021-11-16 12:00:49','2022-11-16 12:00:49'),('795020cc6c423b8e9ce6cdb8bd13af44fde6e1de185e204be96332180c4b0b17c00440faa5f457d8',2,3,'Personal Access Token','[]',0,'2021-11-16 11:29:44','2021-11-16 11:29:44','2022-11-16 11:29:44'),('7a0da57564b9761320b4831b82d1982de75e274a36ae3acf19c26d662d8387f191f6c18d24df9dac',2,3,'Personal Access Token','[]',0,'2021-11-15 19:35:05','2021-11-15 19:35:05','2022-11-15 19:35:05'),('85523a3bb7ac23b8ef9bdf26017d73c4e08e81a65a56bdf92b5d3f4ae8ffbdc35f3a37680f41f1ff',2,3,'Personal Access Token','[]',0,'2021-11-16 11:42:42','2021-11-16 11:42:42','2022-11-16 11:42:42'),('8755186fdf17806567f149eca3a29c178f7e20804acfb94d80784d5088415edcdcd08ebb432e5966',2,3,'Personal Access Token','[]',0,'2021-11-16 12:04:59','2021-11-16 12:04:59','2022-11-16 12:04:59'),('8aed095c830a51f2ca504f8de063fca7ddd1ba036da7ff9311f226ee2de4cd66f226160c4903d0e6',2,3,'Personal Access Token','[]',1,'2021-11-15 20:02:21','2021-11-15 20:02:21','2022-11-15 20:02:21'),('934bcd5693a1773faba9219cefc33d63867f3fe3e2a8286ce63d7f7b091041d67abf8ebaa083dc15',2,3,'Personal Access Token','[]',0,'2021-11-15 20:22:40','2021-11-15 20:22:40','2022-11-15 20:22:40'),('b6fccf01ed643d3b372450c9c47dc76f65e996e06cff7e47e2ade8fe7af357da1b5c624b63c5890a',2,3,'Personal Access Token','[]',0,'2021-11-16 11:51:29','2021-11-16 11:51:29','2022-11-16 11:51:29'),('b855ce54219902668d789904cde0efda0db408b0bed54a1425cf020bbe1aa3605e9a5937bd03df44',2,3,'Personal Access Token','[]',0,'2021-11-15 19:33:46','2021-11-15 19:33:46','2022-11-15 19:33:46'),('bdee78a963359b44a6394528ad58436a33add067c26b4e5c0addcfd39a1900896a62f47b6160a1fb',2,3,'Personal Access Token','[]',0,'2021-11-15 20:21:17','2021-11-15 20:21:17','2022-11-15 20:21:17'),('c9df7d79b5e5972498745121198f47d972b455aea3920369e7c058877c07dcad89a582ce429fbaa5',2,3,'Personal Access Token','[]',0,'2021-11-16 11:52:09','2021-11-16 11:52:09','2022-11-16 11:52:09'),('ef5c9306bec35956b84956013ea198103a4cbc07b23df65af9e3423e28ffcffea6cd0c9089eef6f4',2,3,'Personal Access Token','[]',0,'2021-11-15 20:20:34','2021-11-15 20:20:34','2022-11-15 20:20:34'),('f92f4ec8498e8745fbaa38d5fa438918f98f0852b51d7ec9beeceb1ba608e620ebd24d198fbe55ee',2,3,'Personal Access Token','[]',1,'2021-11-16 12:09:25','2021-11-16 12:09:25','2022-11-16 12:09:25');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','XzTEez1wowKB4GKvQQPAKakCD72ywoLxXfWhvjT8',NULL,'http://localhost',1,0,0,'2021-11-15 19:33:23','2021-11-15 19:33:23'),(2,NULL,'Laravel Password Grant Client','R1JUE1GHwswfFr4YIuAy6KwmLruYyMojr1GNh43W','users','http://localhost',0,1,0,'2021-11-15 19:33:23','2021-11-15 19:33:23'),(3,NULL,'Laravel Personal Access Client','YMkOdITZtaY6oo3CX1g3fMhm2foyM33v1aMJWIOl',NULL,'http://localhost',1,0,0,'2021-11-15 19:33:32','2021-11-15 19:33:32'),(4,NULL,'Laravel Password Grant Client','r13yzuDE86qfSJjQ76EPLgq90BvUhtAvPMYU5KCP','users','http://localhost',0,1,0,'2021-11-15 19:33:32','2021-11-15 19:33:32');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-11-15 19:33:23','2021-11-15 19:33:23'),(2,3,'2021-11-15 19:33:32','2021-11-15 19:33:32');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_user_id_foreign` (`user_id`),
  CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'1112222','Lorem ipsum dolor sit amet consecte Lorem ipsum dolor sit amet consecte',2,'2021-11-15 19:41:43','2021-11-16 11:43:05'),(3,'dasd','sad',2,'2021-11-16 11:37:45','2021-11-16 11:42:05'),(4,'asds','das',3,'2021-11-16 11:56:25','2021-11-16 11:56:25');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'felipe','felipei.mancilla@gmail.com',NULL,'$2y$10$69Ya40fPel9TAwBrEmLpSupnIgjHkqc03imcsGjPAycQ6IN9kzkwq',NULL,'2021-11-15 19:30:47','2021-11-15 19:30:47'),(3,'Boris','Boris@boris.cl',NULL,'$2y$10$XEhSsQIaIY85LrTs3h9GD.9MabUBA0FRXOXjQVck7Gbt3V5WwZq8y',NULL,'2021-11-16 11:28:08','2021-11-16 11:28:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prueba'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16  9:11:29
