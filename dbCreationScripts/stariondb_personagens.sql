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
-- Table structure for table `personagens`
--

DROP TABLE IF EXISTS `personagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `vantagem` varchar(255) NOT NULL,
  `desvantagem` varchar(255) NOT NULL,
  `frase` varchar(255) NOT NULL,
  `acerto` int NOT NULL,
  `erro` int NOT NULL,
  `descricao` text,
  `img_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagens`
--

LOCK TABLES `personagens` WRITE;
/*!40000 ALTER TABLE `personagens` DISABLE KEYS */;
INSERT INTO `personagens` VALUES (1,1,'Astro the Navigator','Clear Path - Exclui duas alternativas erradas.','Point Surge - A pergunta passa a valer menos pontos.','Rumo ao infinito e além!',7,4,'Astro é um navegador estelar lendário. Ele pode eliminar alternativas erradas, traçando um caminho claro, mas cada atalho vem com um custo elevado.','character1'),(2,2,'Luna the Dreamer','Dream Skip - Pode pular uma pergunta sem penalidade.','No points - Não ganha a pontuação da pergunta pulada.','Sonhe grande, descubra mais!',7,4,'Luna é uma sonhadora mística que vislumbra o futuro em seus devaneios. Seus olhos brilham com a luz das galáxias, permitindo-lhe evitar obstáculos inesperados, mas nem sempre suas visões trazem recompensas.','character2'),(3,3,'Sol the Explorer','Double Discovery - Dobra a pontuação de uma pergunta.','Severe Penalty - Penalidade maior de oxigênio em erros subsequentes.','Desbrave o desconhecido!',7,4,'Sol é um explorador audacioso que consegue ampliar em dobro suas descobertas. Infelizmente, sua habilidade tem um custo, pois qualquer erro subsequente impõe uma severa penalidade de oxigênio.','character3');
/*!40000 ALTER TABLE `personagens` ENABLE KEYS */;
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
