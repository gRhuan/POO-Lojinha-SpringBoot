-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lojinha
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bairro` varchar(20) NOT NULL,
  `celular` varchar(16) NOT NULL,
  `cep` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(75) NOT NULL,
  `endereco` varchar(75) NOT NULL,
  `nome` varchar(75) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK7wflw78ibh162cmq12ii6ffly` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Centro','(11) 99999-0001','01000-000','São Paulo','12345678901','1985-06-15','ana.silva@gmail.com','Rua dos Alfeneiros','Ana Silva','100','SP'),(2,'Jardins','(11) 99999-0002','01310-000','São Paulo','23456789012','1990-03-22','bruno.costa@yahoo.com','Av. Paulista','Bruno Costa','2000','SP'),(3,'Centro','(21) 99999-0003','20000-000','Rio de Janeiro','34567890123','1978-11-10','carlos.souza@hotmail.com','Rua Aurora','Carlos Souza','320','RJ'),(4,'Copacabana','(21) 99999-0004','22000-000','Rio de Janeiro','45678901234','1995-07-08','daniela.rocha@outlook.com','Av. Atlântica','Daniela Rocha','450','RJ'),(5,'República','(11) 99999-0005','01044-000','São Paulo','56789012345','1983-12-05','edu.pereira@gmail.com','Rua Sete de Abril','Eduardo Pereira','15','SP'),(6,'Consolação','(11) 99999-0006','01308-000','São Paulo','67890123456','1992-01-19','fernanda.lima@yahoo.com','Rua Haddock Lobo','Fernanda Lima','123','SP'),(7,'Centro','(21) 99999-0007','20050-000','Rio de Janeiro','78901234567','1980-02-02','gabriel.ferreira@hotmail.com','Rua da Carioca','Gabriel Ferreira','900','RJ'),(8,'Centro','(21) 99999-0008','20040-000','Rio de Janeiro','89012345678','1989-09-25','helena.batista@outlook.com','Rua do Ouvidor','Helena Batista','220','RJ'),(9,'Bela Vista','(11) 99999-0009','01313-000','São Paulo','90123456789','1987-04-14','isabela.almeida@gmail.com','Av. Nove de Julho','Isabela Almeida','950','SP'),(10,'Consolação','(11) 99999-0010','01302-000','São Paulo','01234567890','1993-10-30','joao.pedro@gmail.com','Rua da Consolação','João Pedro','500','SP');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bairro` varchar(20) NOT NULL,
  `celular` varchar(16) NOT NULL,
  `cep` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_entrada` date NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(75) NOT NULL,
  `endereco` varchar(75) NOT NULL,
  `funcao` varchar(20) NOT NULL,
  `nome` varchar(75) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrxosr8731eb3gbnlbt2mqfan8` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Centro','11987654321','01010-100','São Paulo','12345678901','2020-01-10','1990-05-15','joao.silva@example.com','Rua das Flores','Analista','João Silva','100',2500.00,'SP'),(2,'Bela Vista','11976543210','01310-100','São Paulo','10987654321','2019-04-15','1985-08-20','maria.oliveira@example.com','Avenida Paulista','Gerente','Maria Oliveira','2000',3000.00,'SP'),(3,'Liberdade','11912345678','01520-000','São Paulo','23456789012','2021-06-05','1992-03-30','pedro.santos@example.com','Rua da Liberdade','Coordenador','Pedro Santos','50',2700.00,'SP'),(4,'Jardins','11998765432','01430-100','São Paulo','34567890123','2018-09-20','1988-11-25','ana.costa@example.com','Rua das Acácias','Assistente','Ana Costa','45',2900.00,'SP'),(5,'Consolação','11911223344','01330-200','São Paulo','45678901234','2022-02-10','1995-01-15','carlos.pereira@example.com','Avenida Ipiranga','Supervisor','Carlos Pereira','1234',3200.00,'SP');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cod_barras` varchar(13) NOT NULL,
  `fabricante` varchar(40) NOT NULL,
  `grupo` varchar(20) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `peso` decimal(10,3) NOT NULL,
  `quantidade` int NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6wl0mm8ejy134ja6bpo7w8a6l` (`cod_barras`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'7891234567890','Dell','Computadores','Notebook Dell Inspiron',2.500,10,3500.00),(2,'7891234567891','Logitech','Periféricos','Mouse Gamer Logitech G203',0.200,50,150.00),(3,'7891234567892','Razer','Periféricos','Teclado Mecânico Razer',1.000,30,450.00),(4,'7891234567893','Samsung','Monitores','Monitor Samsung 24\"',4.000,20,700.00),(5,'7891234567894','Kingston','Armazenamento','SSD Kingston 500GB',0.100,100,250.00),(6,'7891234567895','ASUS','Hardware','Placa Mãe ASUS ATX',1.500,15,900.00),(7,'7891234567896','Intel','Hardware','Processador Intel Core i5',0.300,25,1200.00),(8,'7891234567897','Redragon','Hardware','Gabinete Gamer Redragon',7.000,10,350.00),(9,'7891234567898','Corsair','Hardware','Memória RAM 16GB DDR4',0.050,60,400.00),(10,'7891234567899','Corsair','Hardware','Fonte 650W Corsair',1.200,40,500.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

--
-- Dumping routines for database 'lojinha'
--
/*!50003 DROP FUNCTION IF EXISTS `valor_total_estoque` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `valor_total_estoque`(codigo int) RETURNS decimal(15,2)
    DETERMINISTIC
BEGIN
    DECLARE total_estoque DECIMAL(15,2);
    SELECT SUM(Estoque) INTO total_estoque
    FROM vendas
    WHERE vendas.codigo = codigo;
    RETURN total_estoque;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 13:23:35
