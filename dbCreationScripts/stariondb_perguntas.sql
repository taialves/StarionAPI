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
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `texto_pergunta` text NOT NULL,
  `pontos` int NOT NULL,
  `nivel_dificuldade` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `perguntas_chk_1` CHECK ((`nivel_dificuldade` in (1,2,3)))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,'Qual é o planeta mais próximo do Sol?',5,1),(2,'Qual é o maior planeta do Sistema Solar?',5,1),(3,'Qual planeta é conhecido como o \"Planeta Vermelho\"?',5,1),(4,'Qual é o satélite natural da Terra?',5,1),(5,'Qual é o nome da nossa galáxia?',5,1),(6,'O que é um eclipse solar?',5,1),(7,'Quantos planetas existem no Sistema Solar?',5,1),(8,'Qual planeta tem anéis visíveis ao seu redor?',5,1),(9,'Qual é o nome do segundo planeta a partir do Sol?',5,1),(10,'Qual é o menor planeta do Sistema Solar?',5,1),(11,'Qual é a maior lua de Saturno?',10,2),(12,'Qual é a composição principal das estrelas?',10,2),(13,'Qual é o nome do maior vulcão conhecido no Sistema Solar e onde ele está localizado?',10,2),(14,'Qual é o nome do primeiro homem a pisar na Lua?',10,2),(15,'Qual é o maior planeta anão do Sistema Solar?',10,2),(16,'Em que ano foi lançado o telescópio espacial Hubble?',10,2),(17,'Qual é a galáxia mais próxima da Via Láctea?',10,2),(18,'Qual é o nome do efeito que descreve a mudança na frequência das ondas de luz ou som à medida que a fonte e o observador se movem em direção ou para longe um do outro?',10,2),(19,'Qual é a idade estimada do Universo?',10,2),(20,'Qual é a distância aproximada da Terra ao Sol?',10,2),(21,'Qual é o nome da missão que primeiro pousou uma sonda em um cometa?',15,3),(22,'Qual é o elemento mais abundante na atmosfera de Vênus?',15,3),(23,'Qual é a estrela mais próxima do Sistema Solar?',15,3),(24,'Qual é o nome da maior estrutura conhecida no Universo?',15,3),(25,'Qual é a temperatura aproximada da superfície do Sol?',15,3),(26,'Qual é a principal teoria sobre a origem do Universo?',15,3),(27,'Qual é o nome do fenômeno pelo qual um objeto em rotação rápida se achata nos polos e se alarga no equador?',15,3),(28,'Qual é o nome do cinturão de asteróides localizado entre Marte e Júpiter?',15,3),(29,'Qual é a taxa de expansão atual do Universo, também conhecida como a constante de Hubble?',15,3),(30,'Qual é o nome do fenômeno que descreve a deformação do espaço-tempo causada pela presença de massa?',15,3);
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
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
