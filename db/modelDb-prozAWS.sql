-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_portfoliofordevs
-- ------------------------------------------------------
-- Server version	5.7.43-log

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
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv` (
  `id_cv` bigint(20) NOT NULL AUTO_INCREMENT,
  `perfil_profissional` varchar(1000) NOT NULL,
  `apresentacao` varchar(2000) NOT NULL,
  `tempo_experiencia` int(3) NOT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_cv`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cv_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
INSERT INTO `cv` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Officiis eligendi itaque labore et dolorum mollitia officiis optio vero. Quisquam sunt adipisci omnis et ut. Nulla accusantium dolor incidunt officia tempore. Et eius omnis. Cupiditate ut dicta maxime officiis quidem quia. Sed et consectetur qui quia repellendus itaque neque.',5,'2023-11-07 20:22:53',1);
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` bigint(20) NOT NULL AUTO_INCREMENT,
  `cep` int(8) NOT NULL,
  `logradouro` varchar(600) NOT NULL,
  `numero` int(5) NOT NULL,
  `complemento` varchar(600) DEFAULT NULL,
  `bairro` varchar(600) NOT NULL,
  `cidade` varchar(600) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,23068225,'Estrada do Encanamento',1826,'rua da torre','Campo Grande','Rio de Janeiro','RJ','2023-11-07 20:11:06',1),(2,24903650,'Rua do Azulão',577,NULL,'Flamengo','Maricá','RJ','2023-11-07 20:11:06',2),(3,23078280,'Rua Um',475,NULL,'Campo Grande','Rio de Janeiro','RJ','2023-11-07 20:11:06',3),(4,25965060,'Rua Antônio de Oliveira Salazar',669,'rua sul','Golfe','Teresópolis','RJ','2023-11-07 20:11:06',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redes_sociais`
--

DROP TABLE IF EXISTS `redes_sociais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redes_sociais` (
  `id_redes` bigint(20) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(600) DEFAULT NULL,
  `instagram` varchar(600) NOT NULL,
  `github` varchar(600) NOT NULL,
  `likedin` varchar(600) NOT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_redes`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `redes_sociais_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redes_sociais`
--

LOCK TABLES `redes_sociais` WRITE;
/*!40000 ALTER TABLE `redes_sociais` DISABLE KEYS */;
INSERT INTO `redes_sociais` VALUES (1,'https://www.facebook.com/steffany.sympson','https://www.instagram.com/steffany.sympson/','https://github.com/SteffanySympson','https://www.linkedin.com/in/steffany-sympson','2023-11-07 19:35:25',1),(2,'https://www.facebook.com/ryan.fogaca','https://www.instagram.com/ryan.fogaca/','https://github.com/RyanFogaca','https://www.linkedin.com/in/ryan-fogaca','2023-11-07 19:46:40',3),(3,'https://www.facebook.com/tereza.daiane','https://www.instagram.com/tereza.daiane/','https://github.com/TerezaDaiane','https://www.linkedin.com/in/tereza-daiane','2023-11-07 19:46:12',2),(4,'https://www.facebook.com/elza.rebeca','https://www.instagram.com/elza.rebeca/','https://github.com/ElzaRebeca','https://www.linkedin.com/in/elza-rebeca','2023-11-07 19:46:12',4);
/*!40000 ALTER TABLE `redes_sociais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `nascimento` date NOT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cpf` varchar(11) DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `genero` enum('M','F','NB') NOT NULL,
  `whatsapp` varchar(14) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `situacao` tinyint(1) NOT NULL,
  `area_atuacao` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Steffany','Sympson','1989-11-03','Brasil','05938976766','217728542','F','21969765857','SteffanySympson','03111989','2023-11-07 04:22:08',1,'Devops','ssy.marques@gmail.com'),(2,'Tereza Daiane','Dias','1987-08-01','Brasil','30411088793','283827610','F','21995240479','TerezaDDias','1234567','2023-11-07 04:46:29',1,'Front-end','tereza-dias87@arecocomercial.com.br'),(3,'Ryan Caio','Fogaça','1965-05-19','Portugal','96682724713','393929449','M','2138787277','RyanCaioFogaca','1234567','2023-11-07 04:46:29',1,'FullStack','ryancaiofogaca@mailnull.com'),(4,'Elza Rebeca','Carvalho','2002-01-11','EUA','47097252766','287535721','F','21996485963','ElzaCarvalho92','1234567','2023-11-07 04:46:29',1,'Backend','elza-carvalho92@prognum.com.br');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagas` (
  `id_vagas` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo_vaga` varchar(100) NOT NULL,
  `remuneracao` decimal(6,2) NOT NULL,
  `descricao_vaga` varchar(1000) NOT NULL,
  `modelo_contrato` enum('CLT','PJ','Freelancer','Estágio','Treinee') NOT NULL,
  `modelo_trabalho` enum('Home Office','Híbrido','Presencial') NOT NULL,
  `senioridade` enum('Estagiário','Júnior','Pleno','Sênior') NOT NULL,
  `area_atuacao` varchar(100) NOT NULL,
  `link_vaga` varchar(600) DEFAULT NULL,
  `cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `situacao` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vagas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_portfoliofordevs'
--

--
-- Dumping routines for database 'db_portfoliofordevs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 17:43:05
