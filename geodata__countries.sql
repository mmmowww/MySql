-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: geodata
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_countries`
--

DROP TABLE IF EXISTS `_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_countries`
--

LOCK TABLES `_countries` WRITE;
/*!40000 ALTER TABLE `_countries` DISABLE KEYS */;
INSERT INTO `_countries` VALUES (1,'Россия'),(2,'Украина'),(3,'Беларусь'),(4,'Казахстан'),(5,'Азербайджан'),(6,'Армения'),(7,'Грузия'),(8,'Израиль'),(9,'США'),(10,'Канада'),(11,'Кыргызстан'),(12,'Латвия'),(13,'Литва'),(14,'Эстония'),(15,'Молдова'),(16,'Таджикистан'),(17,'Туркменистан'),(18,'Узбекистан'),(19,'Австралия'),(20,'Австрия'),(21,'Албания'),(22,'Алжир'),(23,'Американское Самоа'),(24,'Ангилья'),(25,'Ангола'),(26,'Андорра'),(27,'Антигуа и Барбуда'),(28,'Аргентина'),(29,'Аруба'),(30,'Афганистан'),(31,'Багамы'),(32,'Бангладеш'),(33,'Барбадос'),(34,'Бахрейн'),(35,'Белиз'),(36,'Бельгия'),(37,'Бенин'),(38,'Бермуды'),(39,'Болгария'),(40,'Боливия'),(41,'Босния и Герцеговина'),(42,'Ботсвана'),(43,'Бразилия'),(44,'Бруней-Даруссалам'),(45,'Буркина-Фасо'),(46,'Бурунди'),(47,'Бутан'),(48,'Вануату'),(49,'Великобритания'),(50,'Венгрия'),(51,'Венесуэла'),(52,'Виргинские острова, Британские'),(53,'Виргинские острова, США'),(54,'Восточный Тимор'),(55,'Вьетнам'),(56,'Габон'),(57,'Гаити'),(58,'Гайана'),(59,'Гамбия'),(60,'Гана'),(61,'Гваделупа'),(62,'Гватемала'),(63,'Гвинея'),(64,'Гвинея-Бисау'),(65,'Германия'),(66,'Гибралтар'),(67,'Гондурас'),(68,'Гонконг'),(69,'Гренада'),(70,'Гренландия'),(71,'Греция'),(72,'Гуам'),(73,'Дания'),(74,'Доминика'),(75,'Доминиканская Республика'),(76,'Египет'),(77,'Замбия'),(78,'Западная Сахара'),(79,'Зимбабве'),(80,'Индия'),(81,'Индонезия'),(82,'Иордания'),(83,'Ирак'),(84,'Иран'),(85,'Ирландия'),(86,'Исландия'),(87,'Испания'),(88,'Италия'),(89,'Йемен'),(90,'Кабо-Верде'),(91,'Камбоджа'),(92,'Камерун'),(93,'Катар'),(94,'Кения'),(95,'Кипр'),(96,'Кирибати'),(97,'Китай'),(98,'Колумбия'),(99,'Коморы'),(100,'Конго'),(101,'Конго, демократическая республика'),(102,'Коста-Рика'),(103,'Кот д`Ивуар'),(104,'Куба'),(105,'Кувейт'),(106,'Лаос'),(107,'Лесото'),(108,'Либерия'),(109,'Ливан'),(110,'Ливия'),(111,'Лихтенштейн'),(112,'Люксембург'),(113,'Маврикий'),(114,'Мавритания'),(115,'Мадагаскар'),(116,'Макао'),(117,'Македония'),(118,'Малави'),(119,'Малайзия'),(120,'Мали'),(121,'Мальдивы'),(122,'Мальта'),(123,'Марокко'),(124,'Мартиника'),(125,'Маршалловы Острова'),(126,'Мексика'),(127,'Микронезия, федеративные штаты'),(128,'Мозамбик'),(129,'Монако'),(130,'Монголия'),(131,'Монтсеррат'),(132,'Мьянма'),(133,'Намибия'),(134,'Науру'),(135,'Непал'),(136,'Нигер'),(137,'Нигерия'),(138,'Кюрасао'),(139,'Нидерланды'),(140,'Никарагуа'),(141,'Ниуэ'),(142,'Новая Зеландия'),(143,'Новая Каледония'),(144,'Норвегия'),(145,'Объединенные Арабские Эмираты'),(146,'Оман'),(147,'Остров Мэн'),(148,'Остров Норфолк'),(149,'Острова Кайман'),(150,'Острова Кука'),(151,'Острова Теркс и Кайкос'),(152,'Пакистан'),(153,'Палау'),(154,'Палестинская автономия'),(155,'Панама'),(156,'Папуа - Новая Гвинея'),(157,'Парагвай'),(158,'Перу'),(159,'Питкерн'),(160,'Польша'),(161,'Португалия'),(162,'Пуэрто-Рико'),(163,'Реюньон'),(164,'Руанда'),(165,'Румыния'),(166,'Сальвадор'),(167,'Самоа'),(168,'Сан-Марино'),(169,'Сан-Томе и Принсипи'),(170,'Саудовская Аравия'),(171,'Свазиленд'),(172,'Святая Елена'),(173,'Северная Корея'),(174,'Северные Марианские острова'),(175,'Сейшелы'),(176,'Сенегал'),(177,'Сент-Винсент'),(178,'Сент-Китс и Невис'),(179,'Сент-Люсия'),(180,'Сент-Пьер и Микелон'),(181,'Сербия'),(182,'Сингапур'),(183,'Сирийская Арабская Республика'),(184,'Словакия'),(185,'Словения'),(186,'Соломоновы Острова'),(187,'Сомали'),(188,'Судан'),(189,'Суринам'),(190,'Сьерра-Леоне'),(191,'Таиланд'),(192,'Тайвань'),(193,'Танзания'),(194,'Того'),(195,'Токелау'),(196,'Тонга'),(197,'Тринидад и Тобаго'),(198,'Тувалу'),(199,'Тунис'),(200,'Турция'),(201,'Уганда'),(202,'Уоллис и Футуна'),(203,'Уругвай'),(204,'Фарерские острова'),(205,'Фиджи'),(206,'Филиппины'),(207,'Финляндия'),(208,'Фолклендские острова'),(209,'Франция'),(210,'Французская Гвиана'),(211,'Французская Полинезия'),(212,'Хорватия'),(213,'Центрально-Африканская Республика'),(214,'Чад'),(215,'Чехия'),(216,'Чили'),(217,'Швейцария'),(218,'Швеция'),(219,'Шпицберген и Ян Майен'),(220,'Шри-Ланка'),(221,'Эквадор'),(222,'Экваториальная Гвинея'),(223,'Эритрея'),(224,'Эфиопия'),(226,'Южная Корея'),(227,'Южно-Африканская Республика'),(228,'Ямайка'),(229,'Япония'),(230,'Черногория'),(231,'Джибути'),(232,'Южный Судан'),(233,'Ватикан'),(234,'Синт-Мартен'),(235,'Бонайре, Синт-Эстатиус и Саба');
/*!40000 ALTER TABLE `_countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-03 13:03:36
