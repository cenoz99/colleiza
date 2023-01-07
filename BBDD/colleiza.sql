-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: col-leiza-ddbb.mysql.database.azure.com    Database: colleiza
-- ------------------------------------------------------
-- Server version	5.7.39-log

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
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL,
  PRIMARY KEY (`catId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'Toffee','Soy dulce como un caramelo. Tengo 2 años y estoy esterilizado.','https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg'),(2,'Eruki','Me conocen como el dueño de la camada, tengo ya 7 años y empiezo a flojear, pero soy muy cariñoso con mis dueños.','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),(3,'Simba','Con apenas 3 meses, soy el que ha quedado de mis tres hermanos (que han sido adoptados). Parezco un pequeño pompón.','https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),(4,'Garfield','Aunque suelo ir más a mi bola, me gustan las caricias, sobretodo si van acompañadas de caramelos.','https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_3x4.jpg'),(5,'Txuri','Después de Simba soy el más pequeñín, tanto que podrían confundirme con una bolita de nieve. Por eso me llaman txuri (blanco en euskera).','https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),(6,'Alex','Llega el turno de la obeja negra de la familia, la panterita. Aunque no soy tan amistoso, con el timepo y confianza me van entendiendo y dejo que se acerquen a mí.','https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg');
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `idcomment` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(300) NOT NULL,
  `idpost` int(11) NOT NULL,
  `writer` varchar(45) NOT NULL,
  PRIMARY KEY (`idcomment`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Muy interesante. A ver si puedo sacar un hueco y ayudaros!!',1,'Carla Hernandez'),(12,'Qué buena labor. Ojala más personas como vosotros.',1,'Michael Cenoz Lousteau'),(13,'Espero que se encuentre bien, por favor, ponednos al día con cualquier noticia nueva.',3,'Michael Cenoz Lousteau'),(14,'Pobrecito, le tengo un cariño especial. Espero que se recupere pronto para visitarlo.',3,'Alejandro Montero'),(15,'Me encantaría participar en vuestro proyecto!! Pediré más información ☺️',1,'Carlos Montero Rodríguez');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `subtitle` varchar(300) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(300) NOT NULL,
  PRIMARY KEY (`idpost`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Capturamos 8 gatos para su esterilización','Hemos llevado a cabo el procedimeinto CES en 8 nuevos gatos para llevar un control de la población.','Esta semana hemos llevado a cabo la esterilización de 8 nuevos gatos siguiendo el procedimiento CES (Captura-Esterilización-Suelta). Este procedimiento es muy importante para llevar un control de la población, porque los resultados de un crecimiento masivo de la colonia son más complicados de resolver, y es más conveniente prevenir el problema. Reduce las peleas, los ruidos, los olores y las muertes de los animales por atropello, lesiones y enfermedades, mejorando así la calidad de vida tanto de la colonia como la de los ciudadanos.','https://www.gov.il/BlobFolder/generalpage/street_cats/en/animals_street_cats.jpg'),(3,'Encontramos a Garfield herido','Uno de nuestros volutnarios encontro ayer a Garfield con una pata rota y heridas profundas en su espalda.','Como de costumbre, uno de nuestros voluntarios se acercó ayer a alimentar a los gatos, y desgraciadamente encontró a Garfield herido. Podría tratarse de un acto vandálico, ya que junto a la colonia había tres piedras con restos de sangre. En estos momentos Garfield se encuentra en el veterinario siendo tratado. Son heridas graves pero con tiempo sanará.','https://estaticos.muyinteresante.es/uploads/images/article/60e1fd5e5cafe853ca98505f/1-gato-herido.jpg');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `rolId` int(11) NOT NULL,
  `rolName` varchar(10) NOT NULL,
  PRIMARY KEY (`rolId`),
  UNIQUE KEY `rolName_UNIQUE` (`rolName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (2,'admin'),(1,'user');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `rol` int(11) NOT NULL DEFAULT '1',
  `contactEmail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_rol_idx` (`rol`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','admin','Michael','Cenoz',2,''),(2,'alejandro@gmail.com','1234','Alejandro','Montero',1,'alejandroM@gmail.com'),(3,'cenoz97@gmail.com','michaelcenoz','Michael','Cenoz Lousteau',1,'cenoz97@gmail.com'),(9,'cmr@uclm.com','yuioi67','Carlos','Montero',1,'cmr@uclm.com'),(14,'mcenoz@uoc.edu','mcenoz99','Michael','Cenoz',1,'mcenoz@uoc.edu'),(15,'alejandro.ruiz@gmail.com','aleruiz99','Alejandro','Ruiz',1,'alejandroRu98@gmail.com'),(18,'alejandra.gutierrez@gmail.com','ale99Guti','Alejandra','Gutierrez',1,'alejandra.gutierrez@gmail.com'),(19,'david.alonso@gmail.com','david99Alonso','David','Alonso',1,'david.alonso@gmail.com'),(20,'roberto.dominguez@gmail.com','roberto99Dominguez','Roberto','Dominguez',1,'roberto.dominguez@gmail.com'),(22,'cmr.uclm@gmail.com','123456Cmr','Carlos','Montero Rodríguez',1,'cmr.uclm@gmail.com'),(23,'iker.goikoetxea@gmail.com','ikerGoiko','Iker','Goikoetxea Fernández',1,'iker.goikoetxea@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-01 20:04:31
