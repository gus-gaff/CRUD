-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bdcontrolecolaboradores
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tbdadoscolaboradores`
--

DROP TABLE IF EXISTS tbdadoscolaboradores;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tbdadoscolaboradores (
  colaboradorID smallint NOT NULL AUTO_INCREMENT,
  nomeColaborador varchar(200) NOT NULL,
  cargoColaborador varchar(50) NOT NULL,
  PRIMARY KEY (colaboradorID)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbdadoscolaboradores`
--

LOCK TABLES tbdadoscolaboradores WRITE;
/*!40000 ALTER TABLE tbdadoscolaboradores DISABLE KEYS */;
INSERT INTO tbdadoscolaboradores VALUES (23,'Louise Maitê Bernardes','Desenvolvedor'),(24,'Ana Hadassa Lívia Lima','Analista'),(25,'Danilo Edson Pereira','Designer'),(26,'Silvana Analu Elaine das Neves','Suporte'),(27,'Leandro Tiago Sales','Desenvolvedor'),(28,'Mariah Jéssica Malu Farias','Analista'),(29,'Breno Giovanni Juan da Costa','Designer'),(30,'Rayssa Lavínia Brito','Suporte'),(31,'Joana Jaqueline Ferreira','Desenvolvedor'),(32,'Allana Rafaela Novaes','Analista'),(33,'Fátima Laís Sales','Designer'),(34,'Sebastião Pietro Igor Pereira','Suporte'),(35,'Letícia Beatriz Ayla da Paz','Desenvolvedor'),(36,'Nelson Renan de Paula','Analista'),(37,'Carlos Raimundo Ferreira','Designer'),(38,'Natália Agatha Lavínia Moura','Suporte'),(39,'Enrico Igor Carvalho','Desenvolvedor'),(40,'Geraldo Roberto Vicente Farias','Analista'),(41,'Rodrigo Benício Manuel Teixeira','Designer'),(42,'Matheus Márcio Carvalho','Suporte'),(43,'Simone Daiane Peixoto','Desenvolvedor'),(44,'Sara Rebeca da Silva','Analista'),(45,'Rosa Maitê Luana Assis','Designer'),(46,'Roberto Giovanni Almada','Suporte');
/*!40000 ALTER TABLE tbdadoscolaboradores ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28  1:39:41
