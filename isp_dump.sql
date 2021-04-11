-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: isp
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cust_request`
--

DROP TABLE IF EXISTS `cust_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_request` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `task_id` int unsigned DEFAULT NULL,
  `request_type_id` int unsigned NOT NULL,
  `message_url` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_cust_request_customer1_idx` (`customer_id`),
  KEY `fk_cust_request_task1_idx` (`task_id`),
  KEY `fk_cust_request_request_type1_idx` (`request_type_id`),
  CONSTRAINT `fk_cust_request_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_cust_request_request_type1` FOREIGN KEY (`request_type_id`) REFERENCES `request_type` (`id`),
  CONSTRAINT `fk_cust_request_task1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_request`
--

LOCK TABLES `cust_request` WRITE;
/*!40000 ALTER TABLE `cust_request` DISABLE KEYS */;
INSERT INTO `cust_request` VALUES (1,101,4,1,'http://www.shanahan.com/','2011-04-25 04:14:06'),(2,102,NULL,2,'http://oberbrunner.net/','1977-09-29 05:51:18'),(3,103,NULL,3,'http://romaguera.net/','2003-11-06 08:33:23'),(4,104,1,4,'http://veum.com/','2001-08-07 10:46:25'),(5,105,NULL,5,'http://kassulke.info/','1972-01-11 16:42:19'),(6,107,NULL,1,'http://www.grimes.info/','1998-04-16 00:14:20'),(7,111,NULL,2,'http://sporer.com/','1997-06-01 04:22:04'),(8,112,NULL,3,'http://white.com/','2004-12-10 02:55:18'),(9,114,NULL,4,'http://carterlemke.com/','2017-07-07 21:13:13'),(10,115,NULL,5,'http://heaney.com/','2010-12-25 17:42:55'),(11,118,11,1,'http://www.croningrimes.com/','1983-11-04 01:56:19'),(12,119,NULL,2,'http://www.dickinson.info/','1976-06-27 00:44:21'),(13,120,NULL,3,'http://www.funkankunding.org/','1993-12-27 22:31:56'),(14,121,NULL,4,'http://www.osinski.com/','1993-05-19 23:49:29'),(15,122,NULL,5,'http://www.boyle.biz/','1990-03-11 05:09:06'),(16,124,NULL,1,'http://ryan.com/','2018-07-18 07:02:41'),(17,125,NULL,2,'http://www.legros.biz/','2000-07-13 00:14:34'),(18,130,NULL,3,'http://www.mclaughlin.net/','2016-08-02 07:58:49'),(19,131,NULL,4,'http://www.fadeldeckow.net/','2005-11-18 19:00:29'),(20,133,20,5,'http://www.morar.org/','2016-10-19 05:13:45'),(21,136,NULL,1,'http://treutel.com/','1986-01-20 22:44:01'),(22,137,NULL,2,'http://blandasawayn.com/','2018-05-13 17:43:46'),(23,138,NULL,3,'http://damore.com/','1977-05-29 01:03:32'),(24,139,NULL,4,'http://www.turcotte.info/','1994-03-31 09:22:23'),(25,140,NULL,5,'http://terry.com/','2004-12-14 13:25:39'),(26,141,NULL,1,'http://www.moen.info/','1988-05-03 18:08:55'),(27,147,NULL,2,'http://www.langosh.com/','2000-07-03 10:42:58'),(28,148,NULL,3,'http://www.schimmelshields.org/','1980-06-19 21:30:54'),(29,149,NULL,4,'http://jacobi.com/','2002-08-13 03:56:27'),(30,151,30,5,'http://nader.com/','1975-12-10 07:36:01'),(31,152,NULL,1,'http://daniellynch.biz/','1973-02-24 12:37:44'),(32,154,NULL,2,'http://starkkessler.com/','1976-01-25 14:25:14'),(33,155,NULL,3,'http://gusikowskiosinski.com/','1989-02-21 19:28:03'),(34,156,NULL,4,'http://www.brown.com/','1985-07-02 14:15:08'),(35,160,NULL,5,'http://kshlerin.com/','2009-09-22 02:16:04'),(36,161,NULL,1,'http://murazikfarrell.com/','1984-11-22 10:09:53'),(37,165,NULL,2,'http://jakubowski.com/','1985-08-18 16:08:11'),(38,166,NULL,3,'http://www.kuhiccollins.com/','1994-10-16 01:01:27'),(39,167,NULL,4,'http://jaskolski.com/','1986-08-17 06:40:55'),(40,170,40,5,'http://www.kling.biz/','1984-02-13 20:50:42'),(41,180,NULL,1,'http://sauer.com/','2013-11-11 23:13:25'),(42,186,NULL,2,'http://feestdubuque.com/','1990-11-20 03:58:40'),(43,189,NULL,3,'http://www.bashiriandaniel.biz/','2011-08-25 18:52:22'),(44,192,NULL,4,'http://yost.com/','1980-07-11 23:58:26'),(45,193,NULL,5,'http://schmitt.com/','1984-11-02 02:38:13'),(46,194,NULL,1,'http://hayes.com/','1990-04-14 05:33:05'),(47,196,NULL,2,'http://mcglynn.org/','1995-10-08 07:36:45'),(48,197,NULL,3,'http://www.carter.com/','1973-01-18 04:10:09'),(49,199,NULL,4,'http://www.stokes.com/','2011-09-25 22:15:10'),(50,101,NULL,5,'http://reinger.net/','1980-06-17 13:56:38');
/*!40000 ALTER TABLE `cust_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` datetime NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) unsigned zerofill NOT NULL,
  `manager_id` int unsigned DEFAULT NULL,
  `switch_id` int NOT NULL,
  `port_number` int unsigned DEFAULT NULL,
  `contract_number` int unsigned NOT NULL,
  `contract_date` date NOT NULL,
  `tariff_inet` int unsigned DEFAULT NULL,
  `tariff_phone` int unsigned DEFAULT NULL,
  `tariff_tv` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `contract_number_UNIQUE` (`contract_number`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_customer_manager_idx` (`manager_id`),
  KEY `fk_customer_switch_idx` (`switch_id`) /*!80000 INVISIBLE */,
  KEY `fk_customer_tariff1_idx` (`tariff_inet`),
  KEY `fk_customer_tariff2_idx` (`tariff_phone`),
  KEY `fk_customer_tariff3_idx` (`tariff_tv`),
  CONSTRAINT `fk_customer_manager` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`),
  CONSTRAINT `fk_customer_switch` FOREIGN KEY (`switch_id`) REFERENCES `switch` (`id`),
  CONSTRAINT `fk_customer_tariff1` FOREIGN KEY (`tariff_inet`) REFERENCES `tariff` (`id`),
  CONSTRAINT `fk_customer_tariff2` FOREIGN KEY (`tariff_phone`) REFERENCES `tariff` (`id`),
  CONSTRAINT `fk_customer_tariff3` FOREIGN KEY (`tariff_tv`) REFERENCES `tariff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Kiera Abbott','8870 Kiehn Mission Suite 661\nNew Adalineborough, GA 46737-4682','1986-10-17 01:51:48','katlynn.prohaska@example.net',0000000000,1,1,11,153,'2011-04-11',2,4,7,'1975-03-03 03:57:00','2021-04-10 15:05:20',NULL),(102,'Annabelle Hudson','55349 Bogan Tunnel Apt. 428\nAbigayleside, AK 35599-4017','1995-09-26 23:32:35','lesch.dedric@example.org',0000204546,2,2,14,335,'1977-11-21',1,NULL,NULL,'1994-09-12 20:08:40','2021-04-10 19:24:40',NULL),(103,'Prof. Deshaun Jakubowski','3430 Swift Center\nFayhaven, NC 01483-6640','1985-10-22 01:55:55','langworth.diana@example.net',0000000385,3,3,12,144,'2006-09-30',3,NULL,NULL,'2015-01-23 11:32:06','2021-04-10 15:05:20',NULL),(104,'Pansy Fahey','59818 Rod Ford Apt. 856\nJedberg, MD 99475-4051','1998-02-07 18:16:24','bmoore@example.net',0000804200,4,4,9,337,'1978-02-17',1,NULL,8,'1998-06-11 12:42:37','2021-04-10 15:05:20',NULL),(106,'Martina Gorczany I','34951 Wilderman Roads Suite 653\nSchambergertown, IA 07138','2000-12-26 07:38:45','adickens@example.com',0000000050,6,6,12,207,'1977-03-22',1,5,NULL,'2016-11-07 22:56:26','2021-04-10 15:05:20',NULL),(107,'Mrs. Shirley Schowalter','955 Steuber Loaf Suite 852\nKrajcikside, NH 49746-3786','2002-03-21 20:08:32','rasheed26@example.net',4294967295,1,7,4,168,'1982-08-11',1,NULL,9,'1979-11-07 02:34:36','2021-04-10 19:24:40',NULL),(108,'Ms. Madelyn Moore','928 Karlee Spring\nRempelville, TN 76307','1984-06-30 04:02:53','kayley.bailey@example.net',0000000001,2,8,20,358,'2000-11-13',2,NULL,NULL,'1974-04-02 08:36:24','2021-04-10 19:24:40',NULL),(111,'Sophia Zemlak','3811 Feeney Row Suite 177\nSouth Briana, TN 87368','1995-07-05 22:04:27','marion48@example.org',0000006268,5,11,18,238,'1994-11-05',2,NULL,NULL,'2017-08-05 03:15:49','2021-04-10 15:05:20',NULL),(112,'Dejuan Hyatt','30534 Welch Haven Suite 520\nEldamouth, OR 42064-6440','1961-06-22 08:09:15','arnoldo57@example.com',0000000069,6,12,10,317,'2015-02-21',3,6,7,'2009-01-14 08:40:49','2021-04-10 19:24:40',NULL),(115,'Mariano Cole','963 Cruickshank Ridge\nRathchester, NH 79214','1998-06-16 01:11:57','sean13@example.com',0000705109,3,15,11,263,'1993-10-14',3,NULL,NULL,'1995-07-11 01:50:42','2021-04-10 19:24:40',NULL),(118,'Cassandre Mertz','73919 Amy Stream Suite 286\nJadenville, WV 25714','1978-04-25 06:47:48','jstark@example.net',0000308912,6,18,3,159,'2019-01-10',2,NULL,8,'1980-01-24 06:15:03','2021-04-10 19:24:40',NULL),(120,'Maud Swaniawski II','238 Ines Forks\nMaggioside, OR 50032','1996-01-03 18:31:50','nathanael14@example.net',0000419536,2,20,18,375,'2002-07-20',1,5,NULL,'1997-09-26 03:10:39','2021-04-10 15:05:20',NULL),(121,'Dr. Ray Bashirian V','53865 Eichmann Garden Apt. 066\nSouth Kaela, SD 50349','1999-08-28 18:42:20','moen.raleigh@example.net',0000000086,3,1,23,219,'1997-08-02',1,NULL,NULL,'1978-01-16 14:13:03','2021-04-10 15:05:20',NULL),(122,'Braulio Kovacek','930 Clovis Drive\nNorth Claudieberg, MI 52581-9664','1979-09-14 02:15:02','vokuneva@example.org',0000608535,4,2,24,361,'2009-12-01',2,NULL,9,'2001-10-07 23:49:45','2021-04-10 15:05:20',NULL),(125,'Abigayle Emmerich V','53802 Ebert Rest Apt. 326\nWest Rigobertoborough, ND 83941','2001-07-18 17:33:12','becker.darrin@example.net',0000720341,1,5,9,141,'2003-05-13',1,NULL,NULL,'2010-01-02 12:25:11','2021-04-10 19:24:40',NULL),(129,'Etha Nienow','15586 Osborne Drives Suite 604\nLake Marisol, KY 44200','1984-09-22 18:13:28','zupton@example.com',0000481152,5,9,6,377,'1987-08-06',1,NULL,9,'1977-05-03 02:05:59','2021-04-10 19:24:40',NULL),(130,'Gage Gerlach','57804 Kunde Estates Apt. 369\nFritzhaven, DE 35685-2488','1998-03-02 08:42:05','auer.eladio@example.net',0000000055,6,10,2,279,'2005-08-20',2,4,NULL,'2009-01-15 23:57:01','2021-04-10 19:24:40',NULL),(131,'Prof. Raymundo Cronin Sr.','1645 Triston Walk\nEmmanuelleshire, NJ 53859-0442','1999-07-23 13:47:14','art88@example.com',0000919231,1,11,23,371,'1988-12-23',1,NULL,NULL,'1991-12-15 18:43:21','2021-04-10 15:05:20',NULL),(132,'Prof. Glenda Cassin','9829 Little Ridge Suite 511\nBennettmouth, HI 34630-1700','1985-12-22 08:52:55','denis87@example.net',0000000085,2,12,9,381,'1974-06-29',1,5,NULL,'2017-02-16 02:27:04','2021-04-10 15:05:20',NULL),(133,'Chet Gislason DDS','19386 Kristy Drives Suite 283\nEast Kevintown, MN 83944','1982-12-08 00:01:35','dedrick24@example.org',0000000612,3,13,10,345,'2017-02-18',1,NULL,NULL,'1992-07-21 16:04:23','2021-04-10 15:05:20',NULL),(134,'Aron Ryan Jr.','7775 Kristoffer Hills Apt. 588\nLegrosfort, MS 63597','1995-04-19 18:31:39','dooley.pete@example.net',0000827914,4,14,16,126,'2008-04-12',3,NULL,7,'1988-02-04 12:09:35','2021-04-10 15:05:20',NULL),(135,'Reagan Runolfsson','902 Rath Pike Suite 350\nNorth Ritaberg, TN 47239-4549','1997-04-14 07:23:24','gussie99@example.com',0000000047,5,15,4,271,'1971-05-16',2,NULL,NULL,'1996-11-25 00:26:24','2021-04-10 19:24:40',NULL),(137,'Naomie Heller','53660 Cummerata Tunnel Apt. 014\nEast Laverne, RI 61312','2002-05-10 17:03:45','hoppe.charlie@example.com',0000160992,1,17,23,312,'1977-11-03',1,NULL,8,'1992-09-16 18:19:50','2021-04-10 15:05:20',NULL),(138,'Mrs. Krystina Schroeder MD','1578 Bradtke Vista\nDonnellyshire, OK 86501','1979-11-08 17:01:59','camila.bechtelar@example.org',0000000024,2,18,19,122,'2015-10-28',1,4,NULL,'1976-08-06 00:58:02','2021-04-10 15:05:20',NULL),(139,'Prof. Mariam Kozey III','749 Schiller Forks Suite 112\nWest Vince, RI 51376','1987-04-30 18:14:06','jessika08@example.com',0000174716,3,19,8,181,'2010-01-30',2,NULL,NULL,'1993-10-08 03:02:24','2021-04-10 19:24:40',NULL),(141,'Haley Ortiz','9637 Harber Lane Suite 097\nPort Penelopemouth, WY 32131','1984-08-19 13:52:33','carlee.schuster@example.com',0000000291,5,1,8,162,'1975-02-12',3,4,NULL,'2009-07-19 09:52:55','2021-04-10 15:05:20',NULL),(142,'Amely Jast','6407 Enid Crossroad Suite 656\nMorissettehaven, CT 25963','1970-04-12 07:02:17','icummerata@example.com',1967127913,6,2,8,355,'2014-12-29',1,NULL,NULL,'1989-11-07 13:03:00','2021-04-10 15:05:20',NULL),(144,'Wilton Swaniawski III','4994 Donnie Parks\nFadelview, AK 40519-1095','1986-03-03 01:58:32','gbashirian@example.net',0000283143,2,4,1,243,'1976-11-16',2,NULL,9,'2007-10-26 00:51:46','2021-04-10 15:05:20',NULL),(145,'Sydnie Wuckert','1101 Schuppe Fords\nCarmelbury, TX 75263-1136','1979-03-04 16:59:59','hagenes.nicholaus@example.com',0000000474,3,5,11,178,'1975-05-26',3,NULL,NULL,'1991-06-30 18:05:51','2021-04-10 15:05:20',NULL),(149,'Miss Tess Sporer','35395 Braun Harbors Apt. 209\nAnthonyport, OK 64121','1981-03-10 13:09:59','tprosacco@example.org',0000440735,1,9,14,340,'1986-05-27',1,NULL,7,'1994-10-18 02:32:42','2021-04-10 15:05:20',NULL),(150,'Weston Corkery','512 Jordon Club\nBaumbachland, NH 56177','1996-08-03 05:01:36','brian.reichert@example.org',0000000007,2,10,23,286,'2000-08-19',2,NULL,NULL,'1999-10-02 20:37:50','2021-04-10 19:24:40',NULL),(151,'John Doe','3247 Alexa Ways Apt. 552','1982-10-17 03:49:37','wolff.doee@example.net',0004282930,5,20,3,451,'2016-12-20',1,NULL,NULL,'2009-07-29 15:16:27',NULL,NULL),(153,'Arturo Kuvalis','1712 Tillman Road\nMarksfurt, ND 09573','1993-10-01 15:35:12','william.kshlerin@example.org',2337767208,5,13,2,228,'2020-10-08',3,4,7,'2017-10-19 09:08:18','2021-04-10 15:05:20',NULL),(154,'Prof. Joe Leuschke','5487 Amelie Skyway Apt. 555\nSouth Taniabury, MO 84110','1994-03-13 08:18:02','qvonrueden@example.net',4071454820,6,14,21,188,'1991-03-20',1,NULL,NULL,'1981-06-17 06:02:43','2021-04-10 15:05:20',NULL),(156,'Gianni Padberg','01879 Hahn Fords\nNorth Lavon, KS 44650-0826','1983-12-23 14:58:43','gus59@example.net',0000275095,2,16,19,392,'2014-01-17',1,NULL,7,'2009-02-22 03:17:52','2021-04-10 15:05:20',NULL),(157,'Mauricio Dach II','675 Streich Estate Apt. 456\nBoehmview, SD 18997','1965-02-19 00:35:49','theodore24@example.com',0000902684,3,17,12,198,'2019-09-13',1,6,NULL,'2021-01-02 10:06:49','2021-04-10 19:24:40',NULL),(159,'Ms. Romaine Keeling','02320 Kiera Inlet\nLorachester, OR 18013-7020','1990-01-13 06:27:09','vida36@example.net',0000024306,5,19,14,360,'1972-12-07',1,NULL,NULL,'1999-03-17 19:24:05','2021-04-10 19:24:40',NULL),(160,'George Graham V','515 Ara Village\nEast Gilbertostad, AK 72295','2000-06-10 08:46:19','jacey60@example.org',2453031104,6,20,8,259,'1977-11-29',2,NULL,NULL,'2014-01-30 06:05:10','2021-04-10 19:24:40',NULL),(161,'Prof. Giovanny Morissette','190 Loy Meadows Apt. 983\nPort Sophieborough, AL 70127-0872','1980-03-26 11:39:39','adela.morar@example.net',0000000206,1,1,22,118,'2003-01-10',3,NULL,7,'2009-08-18 18:25:53','2021-04-10 15:05:20',NULL),(164,'Eda Mills Jr.','8067 Adriana Cape Apt. 467\nStiedemannburgh, MN 66638','1977-07-13 09:36:14','bernier.astrid@example.net',0000000042,4,4,12,319,'2010-05-21',3,4,NULL,'1978-06-16 21:10:20','2021-04-10 15:05:20',NULL),(166,'Caterina Stiedemann','250 Ivy Mountains Apt. 485\nPort Mariana, NM 87874','1987-02-13 23:18:28','doris.stanton@example.org',0000000090,6,6,7,327,'1984-08-06',2,NULL,NULL,'1978-07-03 06:01:38','2021-04-10 15:05:20',NULL),(168,'Gene Lang','549 Evans Trail Suite 569\nTomasatown, IL 03395','2002-01-21 06:05:50','christy.hermann@example.net',0000000028,2,8,9,307,'1973-04-28',1,4,8,'2002-07-22 08:52:03','2021-04-10 15:05:20',NULL),(170,'Liza Herbert','86689 Rice Mountains Apt. 223','1988-05-11 22:06:16','liza.herb@example.org',0003785439,1,15,8,452,'2016-12-21',2,4,NULL,'2009-07-30 15:14:27',NULL,NULL),(172,'Lula Sporer','0049 Yasmine Garden Suite 139\nStehrhaven, AZ 85972','1982-07-24 12:01:23','darrell.adams@example.org',0000000003,6,12,11,218,'2008-04-14',1,NULL,9,'1983-06-18 18:25:10','2021-04-10 15:05:20',NULL),(173,'Zola Pacocha','8452 Shane Gardens Suite 859\nNew Glenna, WA 32688-8415','1989-09-05 12:16:50','schamberger.justus@example.com',0000828053,1,13,9,290,'2017-12-31',2,NULL,NULL,'2019-11-12 21:59:48','2021-04-10 15:05:20',NULL),(175,'Annetta Luettgen','08463 Clementina Hills\nParisianfurt, MA 81905','2001-10-12 14:42:23','yritchie@example.org',0000000856,3,15,10,169,'1985-06-29',3,NULL,NULL,'1991-09-02 11:29:31','2021-04-10 15:05:20',NULL),(177,'Joel Hettinger','194 Leola Shores\nEast Russ, ID 04394','2002-01-24 14:13:10','madonna95@example.org',3098094246,5,17,4,341,'1979-07-16',2,NULL,NULL,'1976-01-31 23:43:39','2021-04-10 15:05:20',NULL),(178,'Prof. Hassan Simonis','900 Drake Knoll Suite 270\nLake Dorris, KY 24511-7563','1979-04-08 13:27:28','ehessel@example.net',1545146470,6,18,10,102,'1970-09-09',1,NULL,NULL,'2006-04-19 08:09:40','2021-04-10 15:05:20',NULL),(181,'Kenton Bayer','05876 Josiah Mountains\nJakeshire, WY 26827','2001-07-16 01:05:19','jprice@example.net',0000556816,3,1,5,156,'2019-12-20',NULL,4,7,'2020-03-13 20:25:03','2021-04-10 19:24:40',NULL),(183,'Herbert Crona','5668 Spinka Extensions\nUliceston, WY 75330','1982-07-26 23:55:55','justyn79@example.net',0000000076,5,3,2,191,'2005-06-09',3,NULL,NULL,'1970-07-30 15:33:18','2021-04-10 15:05:20',NULL),(186,'Rod Yundt','440 Strosin Falls\nCarrollchester, KY 09676','1986-06-02 05:01:02','jadon49@example.net',0000215899,2,6,16,210,'1987-11-16',2,NULL,NULL,'2003-06-29 09:10:42','2021-04-10 15:05:20',NULL),(189,'Mrs. Yvonne Reichert','862 Ava Flat Apt. 470\nNew Cynthialand, VA 63923-1778','1994-07-15 17:05:19','gislason.nigel@example.org',1529118619,5,9,19,246,'1973-04-14',1,NULL,8,'1983-06-30 21:31:42','2021-04-10 15:05:20',NULL),(191,'Mr. Anderson Boehm DVM','94565 Kessler Garden Suite 195\nEmilianoberg, TN 30191','1981-08-13 03:44:45','lubowitz.nicholaus@example.org',0000000357,1,11,9,383,'1977-08-11',NULL,5,NULL,'2016-09-21 13:15:05','2021-04-10 15:05:20',NULL),(192,'Alvah Bartoletti','992 Wunsch Port Suite 167\nDarrionshire, NE 19320-2999','1996-07-16 16:35:34','waters.benton@example.com',0000000537,2,12,4,363,'2018-07-29',2,NULL,NULL,'2002-07-03 23:50:37','2021-04-10 15:05:20',NULL),(193,'Prof. Antonia Brekke I','50182 Grady Prairie Suite 189\nWest Domenica, MT 68366-8820','1982-09-20 09:27:54','bailey.santa@example.com',0000000147,3,13,6,348,'1995-10-05',3,NULL,9,'2003-11-04 04:28:49','2021-04-10 15:05:20',NULL),(194,'Mr. Norbert Beier Jr.','86689 Rice Mountains Apt. 201\nFlatleyhaven, KY 13733','1972-04-02 05:27:37','wboyer@example.org',0000000509,4,14,5,366,'2017-03-12',1,NULL,7,'2018-01-31 08:00:13','2021-04-10 15:05:20',NULL),(195,'Dr. Mariela Greenholt PhD','3247 Alexa Ways Apt. 550\nBradchester, SD 01827','1980-07-14 13:31:36','branson.murphy@example.net',0000467016,5,15,9,106,'2013-07-28',2,6,NULL,'2001-07-29 15:16:27','2021-04-10 15:05:20',NULL),(196,'Stevie Bogan','707 Alfreda Corners\nNew Celestino, IA 36215-2460','2001-10-10 13:07:30','pedro65@example.net',0000000806,6,16,20,396,'2016-12-30',3,NULL,7,'1978-01-31 10:14:17','2021-04-10 15:05:20',NULL),(199,'Ms. Juliet Towne Sr.','35926 Sigmund Haven\nSouth Blaze, CT 31017-7795','1982-11-17 03:49:37','wolff.abe@example.net',0000000671,3,19,11,326,'1984-01-28',1,NULL,NULL,'1997-04-21 19:21:03','2021-04-10 15:05:20',NULL),(200,'Dr. Donavon Herzog','2972 Tanya Glens\nKundetown, IL 28195','1987-05-10 22:06:16','raheem78@example.org',1993025686,4,20,4,320,'1991-10-20',1,NULL,7,'1987-07-20 20:42:40','2021-04-10 15:05:20',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `customer_BEFORE_INSERT` BEFORE INSERT ON `customer` FOR EACH ROW BEGIN
 IF NEW.tariff_inet IS NULL AND NEW.tariff_phone IS NULL AND NEW.tariff_tv IS NULL THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Для абонента не указан ни один тариф';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Kennedy Mante','1994-12-31 03:47:03',NULL),(2,'Arnold Fisher','1993-04-19 22:49:40',NULL),(3,'Felipa Cassin','1978-02-18 09:53:28',NULL),(4,'Bennie Ernser','2008-02-05 03:17:36',NULL),(5,'Gunner Parisian','1976-09-15 01:54:56',NULL),(6,'Dakota Simonis','1974-07-23 18:04:41',NULL);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_type`
--

DROP TABLE IF EXISTS `request_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_type`
--

LOCK TABLES `request_type` WRITE;
/*!40000 ALTER TABLE `request_type` DISABLE KEYS */;
INSERT INTO `request_type` VALUES (1,'email'),(5,'other'),(2,'phone'),(3,'viber'),(4,'website');
/*!40000 ALTER TABLE `request_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch`
--

DROP TABLE IF EXISTS `switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `switch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `switch_model_id` int unsigned NOT NULL,
  `address` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_addr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `ip_addr_UNIQUE` (`ip_addr`),
  KEY `fk_switch_switch_model1_idx` (`switch_model_id`),
  CONSTRAINT `fk_switch_switch_model1` FOREIGN KEY (`switch_model_id`) REFERENCES `switch_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch`
--

LOCK TABLES `switch` WRITE;
/*!40000 ALTER TABLE `switch` DISABLE KEYS */;
INSERT INTO `switch` VALUES (1,1,'7214 Maximilian Crossing\nWest Zionborough, SD 91455','138.236.242.145','2016-01-04 00:00:00','2021-04-10 14:32:18',NULL),(2,2,'207 Clyde Path\nDanielleborough, RI 63979','94.184.129.135','2019-03-04 00:00:00',NULL,NULL),(3,3,'668 Hermiston Island Apt. 820\nMyleshaven, GA 83534','131.125.242.8','2017-01-07 00:00:00','2021-04-10 14:32:18',NULL),(4,4,'233 Holden Vista Suite 546\nEsthertown, OH 37784-4488','95.136.16.181','2014-01-31 00:00:00','2021-04-10 14:32:18',NULL),(5,5,'9491 Eileen Course Suite 906\nLake Diamondhaven, MD 30681-1890','11.251.136.201','2015-03-31 00:00:00',NULL,NULL),(6,6,'03250 Lolita Pike\nNew Jayne, WI 10374-4588','19.11.216.12','2016-05-15 00:00:00','2021-04-10 14:32:18',NULL),(7,1,'721 Pacocha Lake\nBergnaumview, MS 87230-7412','4.67.190.42','2008-07-05 00:00:00','2021-04-10 14:32:18',NULL),(8,2,'5979 Ziemann Lodge Suite 622\nNew Cassie, NH 40663','73.194.26.47','2009-09-16 00:00:00','2021-04-10 14:32:18',NULL),(9,3,'58984 Moshe Square\nDevinville, IN 36485-8654','6.131.232.155','2011-06-21 00:00:00',NULL,NULL),(10,4,'947 Friesen Prairie\nPort Venashire, RI 14054-7400','69.49.57.146','2019-03-06 00:00:00','2021-04-10 14:32:18',NULL),(11,5,'12024 Lessie Forges\nAntonestad, UT 36100','207.47.45.51','2010-08-24 00:00:00',NULL,NULL),(12,6,'740 Opal Avenue\nPredovicmouth, OK 47484-0337','63.246.232.174','2020-10-31 00:00:00','2021-04-10 14:32:18',NULL),(13,1,'445 Shanelle Ports Apt. 899\nSouth Gunnarhaven, VA 41277','208.34.159.95','2021-02-15 00:00:00','2021-04-10 14:32:18',NULL),(14,2,'665 Jacobson Flat Suite 456\nJeremiestad, OK 53731','120.105.207.120','2020-04-11 00:00:00','2021-04-10 14:32:18',NULL),(15,3,'00431 Justen Fort Apt. 262\nWaelchiport, IN 55000','10.21.124.119','2018-01-31 00:00:00',NULL,NULL),(16,4,'52432 Grant Plain\nLake Hallemouth, AZ 76718-6253','233.105.84.46','2017-02-11 00:00:00','2021-04-10 14:32:18',NULL),(17,5,'66840 Nicole Trail\nNew Marianaland, FL 05387','215.227.92.116','2018-05-16 00:00:00',NULL,NULL),(18,6,'85170 Spinka Islands\nWest Eunice, HI 59326','24.136.164.171','2019-12-19 00:00:00','2021-04-10 14:32:18',NULL),(19,1,'43966 Queenie Coves Apt. 949\nBeierborough, IA 69759-6136','11.142.197.168','2015-09-21 00:00:00',NULL,NULL),(20,2,'6638 Coralie Route Apt. 821\nEast Webstermouth, NY 88848-8363','119.233.26.118','2010-01-14 00:00:00','2021-04-10 14:32:18',NULL);
/*!40000 ALTER TABLE `switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_model`
--

DROP TABLE IF EXISTS `switch_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `switch_model` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ports_count` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `model_name_UNIQUE` (`model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_model`
--

LOCK TABLES `switch_model` WRITE;
/*!40000 ALTER TABLE `switch_model` DISABLE KEYS */;
INSERT INTO `switch_model` VALUES (1,'D-Link DES-1210-28ME',24),(2,'D-Link DES-3028',24),(3,'D-Link DES-3526',24),(4,'D-Link DES-3528',24),(5,'D-Link DES-3200-10',8),(6,'D-Link DGS-3200-10',8);
/*!40000 ALTER TABLE `switch_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tariff_type_id` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `fee` float(7,2) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_tariff_type_idx` (`tariff_type_id`),
  CONSTRAINT `fk_tariff_type` FOREIGN KEY (`tariff_type_id`) REFERENCES `tariff_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff`
--

LOCK TABLES `tariff` WRITE;
/*!40000 ALTER TABLE `tariff` DISABLE KEYS */;
INSERT INTO `tariff` VALUES (1,1,'100 Mbit',500.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(2,1,'50 Mbit',400.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(3,1,'25 Mbit',300.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(4,2,'NoLimit',400.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(5,2,'Combined',300.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(6,2,'Time-based',200.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(7,3,'200 Chan',300.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(8,3,'150 Chan',200.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL),(9,3,'100 Chan',100.00,'2021-04-10 12:30:47','2021-04-10 12:31:06',NULL);
/*!40000 ALTER TABLE `tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_type`
--

DROP TABLE IF EXISTS `tariff_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_type`
--

LOCK TABLES `tariff_type` WRITE;
/*!40000 ALTER TABLE `tariff_type` DISABLE KEYS */;
INSERT INTO `tariff_type` VALUES (1,'Internet','2011-01-21 22:09:34'),(2,'Phone','1988-06-02 05:18:25'),(3,'TV','1996-06-24 08:16:36');
/*!40000 ALTER TABLE `tariff_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `url_crm` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `closed_at` datetime DEFAULT NULL,
  `task_status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `url_crm_UNIQUE` (`url_crm`),
  KEY `fk_task_customer1_idx` (`customer_id`),
  KEY `fk_task_task_status1_idx` (`task_status_id`),
  CONSTRAINT `fk_task_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_task_task_status1` FOREIGN KEY (`task_status_id`) REFERENCES `task_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,104,'http://www.wehnerrussel.biz/','2021-04-10 16:17:48',NULL,1),(2,102,'http://www.bogan.com/','1997-07-27 11:40:06',NULL,2),(3,103,'http://www.kshlerin.com/','1988-12-28 18:22:21',NULL,3),(4,101,'http://www.dubuque.com/','2006-09-18 12:47:20','2006-09-19 12:47:20',4),(5,106,'http://www.blockfeil.org/','1974-03-06 23:47:24',NULL,1),(6,107,'http://www.leuschke.com/','2004-07-04 00:45:26',NULL,2),(7,111,'http://www.beierjohnson.com/','2007-04-24 02:17:05',NULL,3),(8,112,'http://lednerpfannerstill.com/','1981-05-30 22:44:33','2006-09-20 12:47:20',4),(9,112,'http://www.schimmel.com/','2009-09-23 12:27:59',NULL,1),(10,115,'http://www.mosciskischaden.com/','2015-12-20 05:33:42',NULL,2),(11,118,'http://www.lueilwitz.com/','1973-06-20 10:52:03',NULL,3),(12,118,'http://www.king.com/','1999-01-16 13:19:18','2006-09-19 12:47:20',4),(13,120,'http://vonrueden.com/','1986-02-03 23:10:59',NULL,1),(14,121,'http://www.reilly.com/','1979-10-05 02:10:05',NULL,2),(15,122,'http://www.zulaufwillms.com/','1970-01-09 01:08:14',NULL,3),(16,125,'http://johnshilpert.com/','2012-07-27 16:57:16','2006-09-19 12:47:20',4),(17,125,'http://www.leffler.info/','1993-06-25 17:44:42',NULL,1),(18,130,'http://www.swift.com/','1978-05-11 17:29:42',NULL,2),(19,131,'http://webergorczany.biz/','1978-11-02 11:23:45',NULL,3),(20,133,'http://www.feeneybergnaum.com/','2000-10-22 09:17:39','2000-10-24 09:17:39',4),(21,137,'http://buckridge.com/','1975-09-07 21:33:17',NULL,1),(22,137,'http://www.kshlerinjenkins.com/','2019-05-25 09:45:06',NULL,2),(23,138,'http://www.collier.biz/','1990-08-24 03:57:09',NULL,3),(24,139,'http://www.schusterlehner.com/','1978-10-09 15:24:23','2000-10-23 09:17:39',4),(25,141,'http://kuhlmanschimmel.com/','1985-09-12 03:06:06',NULL,1),(26,141,'http://gislasonhirthe.biz/','1992-02-08 08:49:24',NULL,2),(27,142,'http://sanford.org/','2002-02-20 23:11:29',NULL,3),(28,145,'http://krajcikbergnaum.biz/','2019-05-20 06:31:43','2000-11-22 09:17:39',4),(29,149,'http://www.schmittwaters.com/','2021-03-15 05:23:51',NULL,1),(30,150,'http://www.vonrueden.com/','2017-06-24 18:25:30',NULL,2),(31,153,'http://www.quigley.com/','2009-10-02 19:38:24',NULL,3),(32,154,'http://www.rippin.com/','1998-11-27 14:05:58','2000-10-22 09:17:39',4),(33,157,'http://www.rempel.com/','2009-11-23 13:48:45',NULL,1),(34,156,'http://www.moorekuhlman.com/','1984-08-31 08:12:07',NULL,2),(35,160,'http://www.corkery.org/','2009-12-06 09:18:59',NULL,3),(36,161,'http://www.watsicaebert.com/','2018-07-29 10:02:18','2000-10-22 09:17:39',4),(37,164,'http://koepp.com/','1979-01-15 08:02:46',NULL,1),(38,166,'http://wunschbednar.com/','1983-04-12 05:48:39',NULL,2),(39,168,'http://mraz.com/','1990-02-19 09:29:13',NULL,3),(40,172,'http://borermclaughlin.info/','2006-02-13 04:42:54','2000-10-22 09:17:39',4);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status`
--

DROP TABLE IF EXISTS `task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `status_UNIQUE` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status`
--

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;
INSERT INTO `task_status` VALUES (4,'completed'),(2,'in process'),(1,'opened'),(3,'paused');
/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top10payers`
--

DROP TABLE IF EXISTS `top10payers`;
/*!50001 DROP VIEW IF EXISTS `top10payers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top10payers` AS SELECT 
 1 AS `name`,
 1 AS `total_fee`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'isp'
--
/*!50003 DROP FUNCTION IF EXISTS `closed_tasks_per_month` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `closed_tasks_per_month`(ym CHAR(6)) RETURNS int
    READS SQL DATA
BEGIN
RETURN 
 (SELECT
  COUNT(*)
 FROM isp.task
 WHERE EXTRACT(YEAR_MONTH FROM closed_at) = ym);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `top10payers`
--

/*!50001 DROP VIEW IF EXISTS `top10payers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top10payers` AS select `customer`.`name` AS `name`,((ifnull((select `tariff`.`fee` from `tariff` where (`tariff`.`id` = `customer`.`tariff_inet`)),0) + ifnull((select `tariff`.`fee` from `tariff` where (`tariff`.`id` = `customer`.`tariff_phone`)),0)) + ifnull((select `tariff`.`fee` from `tariff` where (`tariff`.`id` = `customer`.`tariff_tv`)),0)) AS `total_fee` from `customer` order by `total_fee` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11 13:14:14
