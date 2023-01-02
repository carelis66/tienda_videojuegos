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
-- Table structure for table `detalles_facturacion`
--

DROP TABLE IF EXISTS `detalles_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_facturacion` (
  `detalle_compra` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `cantidad_productos` int NOT NULL,
  `precio_unitario` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  PRIMARY KEY (`detalle_compra`),
  UNIQUE KEY `id_producto_UNIQUE` (`id_producto`),
  KEY `id_Cliente_idx` (`id_cliente`),
  KEY `fk_id_Empleado_idx` (`id_empleado`),
  KEY `fk_nombre_Producto_idx` (`nombre_producto`),
  KEY `fk_nombre_prod_idx` (`nombre_producto`),
  CONSTRAINT `fk_id_Empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_Empleado`),
  CONSTRAINT `fk_id_Producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `fk_nombre_prod` FOREIGN KEY (`nombre_producto`) REFERENCES `proveedor` (`nombre_Producto`),
  CONSTRAINT `id_Cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_facturacion`
--

LOCK TABLES `detalles_facturacion` WRITE;
/*!40000 ALTER TABLE `detalles_facturacion` DISABLE KEYS */;
INSERT INTO `detalles_facturacion` VALUES (1,44,'Halo 3',3,7800,4,2),(2,3,'Mario Kart Wii',5,6790,7,10),(3,14,'Wii Fit',15,7800,23,9),(4,56,'Call of Duty: Modern Warfare 2',10,7500,24,7),(5,99,'Call of Duty: World at War',10,8200,13,1),(6,100,'Battlefield 3',1,8100,1,10),(7,79,'Wii Party',15,5600,24,10),(8,87,'Final Fantasy X',2,6780,15,10),(9,72,'Donkey Kong Country',7,8200,15,11),(10,57,'Grand Theft Auto IV',20,5800,2,2);
/*!40000 ALTER TABLE `detalles_facturacion` ENABLE KEYS */;
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
