CREATE DATABASE  IF NOT EXISTS `clubes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clubes`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: clubes
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
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clube` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `estadio` varchar(255) NOT NULL,
  `competicao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,'Vasco da Gama','Rio de Janeiro','RJ','Estádio São Januário','Brasileirão Série A'),(2,'Vitória da Conquista','Vitória da Conquista','BA','Estádio Lomanto Júnior','Baianão Série B'),(3,'Santos','Santos','SP','Estádio Urbano Caldeira','Brasileirão Série B'),(4,'Conquista FC','Vitória da Conquista','BA','Estádio Lomanto Júnior','SEM COMPETIÇÃO'),(5,'Athletico Paranaense','Curitiba','PR','Ligga Arena','Brasileirão Série A'),(6,'Juazeirense','Juazeiro','BA','Estádio Adauto Moraes','Baianão Série A'),(7,'Palmeiras','São Paulo','SP','Allianz Parque','Brasileirão Série A'),(8,'Corinthians','São Paulo','SP','Neo Química Arena','Brasileirão Série A'),(9,'São Paulo','São Paulo','SP','Estádio Cícero Pompeu de Toledo','Brasileirão Série A'),(10,'Guarani','Campinas','SP','Estádio Brinco de Ouro','Brasileirão Série B'),(11,'Sport Recife','Recife','PE','Ilha do Retiro','Brasileirão Série B'),(12,'Cruzeiro','Belo Horizonte','MG','Estádio Mineirão','Brasileirão Série A'),(13,'América Mineiro','Belo Horizonte','MG','Arena Independência','Brasileirão Série B'),(14,'Coritiba','Curitiba','PR','Estádio Couto Pereira','Brasileirão Série B'),(15,'Cuiabá','Cuiabá','MT','Arena Pantanal','Brasileirão Série A'),(16,'Fortaleza','Fortaleza','CE','Arena Castelão','Brasileirão Série A'),(17,'Ceará','Fortaleza','CE','Arena Castelão','Brasileirão Série B'),(18,'Grêmio','Porto Alegre','RS','Arena do Grêmio','Brasileirão Série A'),(19,'Internacional','Porto Alegre','RS','Estádio Beira-Rio','Brasileirão Série A'),(20,'Barcelona de Ilhéus','Ilhéus','BA','Estádio Mário Pessoa','Baianão Série A'),(21,'Colo-Colo','Ilhéus','BA','Estádio Mário Pessoa','Baianão Série B'),(22,'Jequié','Jequié','BA','Estádio Waldomiro Borges','Baianão Série A'),(23,'Bahia de Feira','Feira de Santana','BA','Arena Cajueiro','Baianão Série A'),(24,'Fluminense de Feira','Feira de Santana','BA','Estáido Jóia da Princesa','Baianão Série B'),(25,'ABC','Natal','RN','Frasqueirão','Brasileirão Série C'),(26,'CRB','Macéio','AL','Estádio Rei Pelé','Brasileirão Série B'),(27,'Vila Nova','Goiânia','GO','OBA','Brasileirão Série B'),(28,'Goías','Goiânia','GO','Estádio Hailé Pinheiro','Brasileirão Série B'),(29,'Atlético Goianiense','Goiânia','GO','Estádio Antônio Accioly','Brasileirão Série A'),(30,'Amazonas','Manaus','AM','Arena Amazônia','Brasileirão Série B'),(31,'Criciúma','Criciúma','SC','Estádio Heriberto Hulse','Brasileirão Série A'),(32,'Chapecoense','Chapecó','SC','Arena Condá','Brasileirão Série B'),(33,'Avaí','Florianópolis','SC','Estádio Ressacada','Brasileirão Série B'),(34,'Figueirense','Florianópolis','SC','Estádio Orlando Scarpelli','Brasileirão Série C'),(35,'Ponte Preta','Campinas','SP','Estádio Moisés Lucarelli','Brasileirão Série B'),(36,'Itabuna','Itabuna','BA','Estádio Luiz Viana','Brasileirão Série D'),(37,'Brasiliense','Brasília','DF','Estádio Mané Garrinhca','Candangão Série A'),(38,'Gama','Brasília','DF','Estádio Mané Garrinhca','Candangão Série A'),(39,'PFC Cajazeiras','Salvador','BA','Estádio Roberto Santos','SEM COMPETIÇÃO'),(40,'Fluminense','Rio de Janeiro','RJ','Estádio Laranjeiras','Brasileirão Série A'),(41,'Botafogo','Rio de Janeiro','RJ','Estádio Nilton Santos','Brasileirão Série A'),(42,'Atlético Mineiro','Belo Horizonte','MG','Arena MRV','Brasileirão Série A'),(43,'Fast','Manaus','AM','Arena Amazônia','Brasileirão Série D'),(51,'Juazeiro','Juazeiro','BA','Estádio Adauto Moraes','Baianão Série B'),(50,'Portuguesa','São Paulo','SP','Estádio do Canindé','Paulistão Série A3'),(49,'Grapiúna','Itabuna','BA','Estádio Luiz Viana','Baianão Série B'),(52,'Serrano','Vitória da Conquista','BA','Estádio Lomanto Júnior','SEM COMPETIÇÃO');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 11:21:40
