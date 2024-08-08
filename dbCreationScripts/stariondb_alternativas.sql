-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: stariondb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alternativas`
--

DROP TABLE IF EXISTS `alternativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pergunta_id` int DEFAULT NULL,
  `texto_opcao` text NOT NULL,
  `is_correta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pergunta_id` (`pergunta_id`),
  CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativas`
--

LOCK TABLES `alternativas` WRITE;
/*!40000 ALTER TABLE `alternativas` DISABLE KEYS */;
INSERT INTO `alternativas` VALUES (1,1,'a) Marte',0),(2,1,'b) Júpiter',0),(3,1,'c) Vênus',0),(4,1,'d) Mercúrio',1),(5,2,'a) Terra',0),(6,2,'b) Marte',0),(7,2,'c) Vênus',0),(8,2,'d) Júpiter',1),(9,3,'a) Terra',0),(10,3,'b) Marte',1),(11,3,'c) Júpiter',0),(12,3,'d) Saturno',0),(13,4,'a) Lua',1),(14,4,'b) Europa',0),(15,4,'c) Io',0),(16,4,'d) Ganimedes',0),(17,5,'a) Via Láctea',1),(18,5,'b) Andrômeda',0),(19,5,'c) Sombrero',0),(20,5,'d) Triângulo',0),(21,6,'a) A Lua passando entre a Terra e o Sol',1),(22,6,'b) A Terra passando entre o Sol e a Lua',0),(23,6,'c) O Sol passando entre a Terra e a Lua',0),(24,6,'d) A Lua passando entre o Sol e Marte',0),(25,7,'a) 6',0),(26,7,'b) 7',0),(27,7,'c) 8',1),(28,7,'d) 9',0),(29,8,'a) Vênus',0),(30,8,'b) Marte',0),(31,8,'c) Júpiter',0),(32,8,'d) Saturno',1),(33,9,'a) Mercúrio',0),(34,9,'b) Terra',0),(35,9,'c) Marte',0),(36,9,'d) Vênus',1),(37,10,'a) Marte',0),(38,10,'b) Vênus',0),(39,10,'c) Mercúrio',1),(40,10,'d) Terra',0),(41,11,'a) Europa',0),(42,11,'b) Ganimedes',0),(43,11,'c) Io',0),(44,11,'d) Titã',1),(45,12,'a) Oxigênio',0),(46,12,'b) Hélio',0),(47,12,'c) Hidrogênio',1),(48,12,'d) Carbono',0),(49,13,'a) Mauna Kea, Terra',0),(50,13,'b) Olympus Mons, Marte',1),(51,13,'c) Monte Everest, Terra',0),(52,13,'d) Tamu Massif, Terra',0),(53,14,'a) Yuri Gagarin',0),(54,14,'b) Buzz Aldrin',0),(55,14,'c) Alan Shepard',0),(56,14,'d) Neil Armstrong',1),(57,15,'a) Plutão',1),(58,15,'b) Éris',0),(59,15,'c) Ceres',0),(60,15,'d) Haumea',0),(61,16,'a) 1985',0),(62,16,'b) 1990',1),(63,16,'c) 1995',0),(64,16,'d) 2000',0),(65,17,'a) Andrômeda',1),(66,17,'b) Triangulum',0),(67,17,'c) Sombrero',0),(68,17,'d) Centaurus A',0),(69,18,'a) Efeito Doppler',1),(70,18,'b) Efeito Peltier',0),(71,18,'c) Efeito Fotoelétrico',0),(72,18,'d) Efeito Joule',0),(73,19,'a) 4,5 bilhões de anos',0),(74,19,'b) 13,8 bilhões de anos',1),(75,19,'c) 10,5 bilhões de anos',0),(76,19,'d) 2 bilhões de anos',0),(77,20,'a) 1 milhão de km',0),(78,20,'b) 50 milhões de km',0),(79,20,'c) 150 milhões de km',1),(80,20,'d) 500 milhões de km',0),(81,21,'a) Cassini',0),(82,21,'b) New Horizons',0),(83,21,'c) Rosetta',1),(84,21,'d) Voyager 1',0),(85,22,'a) Oxigênio',0),(86,22,'b) Nitrogênio',0),(87,22,'c) Hidrogênio',0),(88,22,'d) Dióxido de carbono',1),(89,23,'a) Sirius',0),(90,23,'b) Alfa Centauri',0),(91,23,'c) Betelgeuse',0),(92,23,'d) Proxima Centauri',1),(93,24,'a) Grande Muralha Sloan',0),(94,24,'b) Grande Muralha Hércules-Corona Borealis',1),(95,24,'c) Superaglomerado de Laniakea',0),(96,24,'d) Superaglomerado de Shapley',0),(97,25,'a) 1.000°C',0),(98,25,'b) 3.000°C',0),(99,25,'c) 5.500°C',1),(100,25,'d) 10.000°C',0),(101,26,'a) Teoria da Expansão Estática',0),(102,26,'b) Teoria do Universo Oscilante',0),(103,26,'c) Teoria do Big Bang',1),(104,26,'d) Teoria do Estado Estacionário',0),(105,27,'a) Precessão',0),(106,27,'b) Nutação',0),(107,27,'c) Efeito Coriolis',0),(108,27,'d) Oblatividade',1),(109,28,'a) Cinturão de Kuiper',0),(110,28,'b) Nuvem de Oort',0),(111,28,'c) Cinturão de Van Allen',0),(112,28,'d) Cinturão de Asteróides',1),(113,29,'a) 30 km/s/Mpc',0),(114,29,'b) 50 km/s/Mpc',0),(115,29,'c) 70 km/s/Mpc',1),(116,29,'d) 90 km/s/Mpc',0),(117,30,'a) Relatividade Especial',0),(118,30,'b) Relatividade Geral',1),(119,30,'c) Efeito Doppler',0),(120,30,'d) Teoria das Cordas',0);
/*!40000 ALTER TABLE `alternativas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 16:57:12
