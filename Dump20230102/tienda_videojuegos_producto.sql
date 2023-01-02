CREATE DATABASE  IF NOT EXISTS `tienda_videojuegos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda_videojuegos`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda_videojuegos
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`id_producto`,`nombre_producto`),
  UNIQUE KEY `id_Producto_UNIQUE` (`id_producto`),
  KEY `fk_nombre_Producto_idx` (`nombre_producto`),
  CONSTRAINT `fk_nombre_Producto` FOREIGN KEY (`nombre_producto`) REFERENCES `proveedor` (`nombre_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Wii Sports',5000,8900),(2,'Super Mario Bros.',5000,7500),(3,'Mario Kart Wii',5000,6790),(4,'Wii Sports Resort',5000,8000),(5,'Pokemon Red/Pokemon Blue',5000,7950),(6,'Tetris',5000,7780),(7,'New Super Mario Bros.',5000,7200),(8,'Wii Play',5000,23),(9,'New Super Mario Bros. Wii',5000,6500),(10,'Duck Hunt',5000,5600),(11,'Nintendogs',5000,6200),(12,'Mario Kart DS',5000,6750),(13,'Pokemon Gold/Pokemon Silver',5000,5600),(14,'Wii Fit',5000,7800),(15,'Wii Fit Plus',5000,7800),(16,'Kinect Adventures!',5000,7800),(19,'Super Mario World',5000,6750),(20,'Brain Age: Train Your Brain in Minutes a Day',3500,3200),(21,'Pokemon Diamond/Pokemon Pearl',3500,7000),(22,'Super Mario Land',3500,6750),(23,'Super Mario Bros. 3',3500,6750),(24,'Grand Theft Auto III',3500,7890),(25,'Grand Theft Auto: Vice City',3500,6543),(26,'Pokemon Ruby/Pokemon Sapphire',3500,7700),(27,'Pokemon Black/Pokemon White',3500,7700),(28,'Brain Age 2: More Training in Minutes a Day',3500,4800),(29,'Gran Turismo 3: A-Spec',3500,6600),(30,'Call of Duty: Modern Warfare 3',3500,9000),(32,'Call of Duty: Black Ops',3500,9000),(33,'Pokemon X/Pokemon Y',3500,6777),(34,'Call of Duty: Black Ops 3',3500,9000),(35,'Call of Duty: Black Ops II',3500,9000),(37,'Call of Duty: Modern Warfare 2',3500,9000),(38,'Call of Duty: Modern Warfare 3',3500,9000),(40,'Super Smash Bros. Brawl',400,8000),(42,'Animal Crossing: Wild World',336,7540),(43,'Mario Kart 7',3500,5720),(44,'Halo 3',3500,7800),(45,'Grand Theft Auto V',3500,7000),(46,'Pokemon HeartGold/Pokemon SoulSilver',3500,7350),(47,'Super Mario 64',3500,8000),(48,'Gran Turismo 4',3500,7200),(49,'Super Mario Galaxy',3500,7000),(50,'Pokemon Omega Ruby/Pokemon Alpha Sapphire',3500,6754),(51,'Super Mario Land 2: 6 Golden Coins',3500,6700),(53,'Gran Turismo',3500,8200),(54,'Super Mario 3D Land',3500,5600),(55,'Gran Turismo 5',3500,7890),(56,'Call of Duty: Modern Warfare 2',3500,7500),(57,'Grand Theft Auto IV',3500,5800),(58,'Super Mario All-Stars',3500,5600),(59,'Pokemon FireRed/Pokemon LeafGreen',3500,5400),(60,'Super Mario 64',3500,9800),(61,'Just Dance 3',3500,7100),(62,'Call of Duty: Ghosts',3500,7500),(63,'Halo: Reach',3500,26),(64,'Mario Kart 64',3500,8920),(65,'New Super Mario Bros. 2',3500,7600),(66,'Halo 4',3500,7600),(67,'Final Fantasy VII',780,7600),(69,'Just Dance 2',4000,12),(70,'Gran Turismo 2',4000,52),(71,'Call of Duty 4: Modern Warfare',4000,8200),(72,'Donkey Kong Country',4000,8200),(73,'Minecraft',4000,8200),(74,'Animal Crossing: New Leaf',4000,8200),(75,'Mario Party DS',4000,5000),(76,'The Elder Scrolls V: Skyrim',4000,7300),(77,'Super Mario Kart',4000,8800),(78,'FIFA 16',4000,5600),(79,'Wii Party',4000,5600),(80,'Halo 2',4000,5600),(81,'Mario Party 8',4000,5250),(82,'Pokemon Black 2/Pokemon White 2',4000,6780),(83,'FIFA Soccer 13',4000,7654),(84,'The Sims 3',4000,5670),(85,'GoldenEye 007',4000,5670),(86,'Mario & Sonic at the Olympic Games',4000,5250),(87,'Final Fantasy X',4000,6780),(88,'Final Fantasy VIII',4000,7654),(90,'Pac-Man',4000,5670),(91,'Grand Theft Auto: Liberty City Stories',4000,5600),(92,'Super Mario Galaxy 2',4000,6500),(93,'Star Wars Battlefront (2015)',4000,5700),(94,'Call of Duty: Advanced Warfare',4000,8200),(95,'The Legend of Zelda: Ocarina of Time',4000,7800),(96,'Crash Bandicoot 2: Cortex Strikes Back',54,8000),(97,'Super Mario Bros. 2',78,6500),(98,'Super Smash Bros. for Wii U and 3DS',564,8300),(99,'Call of Duty: World at War',1700,8200),(100,'Battlefield 3',5000,8100);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 12:25:41
