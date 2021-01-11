-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: detran
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `idVeiculo` int NOT NULL,
  `placaVeiculo` varchar(10) DEFAULT NULL,
  `anoVeiculo` year DEFAULT NULL,
  `fk_proprietario` int DEFAULT NULL,
  `fk_marca` int DEFAULT NULL,
  `fk_municipio` int DEFAULT NULL,
  `fk_categoria` int DEFAULT NULL,
  PRIMARY KEY (`idVeiculo`),
  KEY `fk_proprietario` (`fk_proprietario`),
  KEY `fk_marca` (`fk_marca`),
  KEY `fk_municipio` (`fk_municipio`),
  KEY `fk_categoria` (`fk_categoria`),
  CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`fk_proprietario`) REFERENCES `proprietario` (`idDono`),
  CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`fk_marca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `veiculo_ibfk_3` FOREIGN KEY (`fk_municipio`) REFERENCES `municipio` (`idMunicipio`),
  CONSTRAINT `veiculo_ibfk_4` FOREIGN KEY (`fk_categoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'JEX1010',2010,1,6,100,6),(2,'JDW1020',2015,1,5,200,1),(3,'PAZ1015',2016,3,3,333,3),(4,'ULA1000',2017,5,3,350,1),(5,'JJP2020',2018,5,2,300,4),(6,'KES7070',2015,4,6,100,1);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 12:18:35
