-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: full_stack_eletrofelipe
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Felipe Freire','Rua Pinajara, 130','970330555'),(2,'Carolina Silva','Rua Aurora, 480','950553968');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id_comentarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `msg` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_comentarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_final` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,2,'GeladeiraBrastempo',2068.60,1,1911.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `preco` decimal(8,2) NOT NULL,
  `precofinal` decimal(8,2) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_produto`,`preco`,`precofinal`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'geladeira','Geladeira Frost Free Brastemp Side Inverse 540 litros',6389.00,5019.00,'/ImgProdutos/GeladeiraBrastemp+++.jpeg'),(2,'geladeira','Geladeira Frost Free Brastemp Prata 375 litros',2068.60,1910.90,'/ImgProdutos/GeladeiraBrastemp++.jpeg'),(3,'geladeira','Geladeira Frost Free Consul Branca 340 litros',809.00,799.00,'/ImgProdutos/GeladeiraBrastemp+.jpeg'),(4,'fogao','Fogão 4 Bocas Consul Inox com Mesa de Vidro',1200.00,1129.00,'/ImgProdutos/Fogao++.jpeg'),(5,'fogao','Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático',600.00,519.70,'/ImgProdutos/Fogao+.jpeg'),(6,'microondas','Micro-ondas Consul 32 Litros Inox 220V',580.00,409.88,'/ImgProdutos/Microondas+++.jpeg'),(7,'microondas','Micro-ondas 25 Litros Espelhado Philco 220V',508.70,464.53,'/ImgProdutos/Microondas++.jpeg'),(8,'microondas','Micro-ondas 20 Litros Electrolux Branco 220V',459.90,436.05,'/ImgProdutos/Microondas+.jpeg'),(9,'lavaroupa','Lavadora de Roupas Philco inverter 12KG',2399.00,2179.90,'/ImgProdutos/Lavaroupa++.jpeg'),(10,'lavaroupa','Lavadora de Roupas Brastemp 11KG com Turbo Performance Branca',1699.00,1214.10,'/ImgProdutos/Lavaroupa+.jpeg'),(11,'lavalouca','Lava-Louça Electrolux Inox com 10 Serviços, Blue Touch',3599.00,2799.90,'/ImgProdutos/Lavalouca++.jpeg'),(12,'lavalouca','Lava-Louça Compacta 8 Serviços Branca 127V Brastemp',1970.50,1730.61,'/ImgProdutos/Lavalouca+.jpeg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 23:08:33
