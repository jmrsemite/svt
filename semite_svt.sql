-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: semite_svt
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `client_emails`
--

DROP TABLE IF EXISTS `client_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_emails` (
  `client_email_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `trigger_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `to_address` varchar(255) NOT NULL,
  `bcc_address` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_body` text NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `bcc_client` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`client_email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_emails`
--

LOCK TABLES `client_emails` WRITE;
/*!40000 ALTER TABLE `client_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_gateway_params`
--

DROP TABLE IF EXISTS `client_gateway_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_gateway_params` (
  `client_gateway_params_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_gateway_id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`client_gateway_params_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_gateway_params`
--

LOCK TABLES `client_gateway_params` WRITE;
/*!40000 ALTER TABLE `client_gateway_params` DISABLE KEYS */;
INSERT INTO `client_gateway_params` VALUES (91,11,'accept_visa','dWf0hqVIVN+CsFpbEtmLRPxHkWr7dGduInlwdIKQLkwSSIwW5S0s/IyMuECc0diDERMXvg0zWzFiI3rYRdH23g=='),(92,11,'accept_mc','GSVAjQ86/ZLH5sYfx0gjbGatGoHf//zYOemqJf2V7uq/e7JSGj9ybVxhtNCHLg4kztrYfHz2zySuRCQq1jdstg=='),(83,11,'mode','IA2XzvjWDV//sy7PDKbs8ntKD++GUDcJLEJ/ltEo7rDsnPyUoRenAk++OL/jwhBM2eC49gkLhKw/s+VNGM79tQ=='),(72,10,'currency','uyHGSyyB6aNQ+IXcN8jWY3nFI37Y6mJnpTWpUxxLpM5eCExTHTfWFzAeBY8vWcT7cNDRyH1UF5WhBox+aDj9ig=='),(73,10,'merchant_type','BwOKNafK1GXOhQNklz0+uzbYHjGPhRtz4pNJ1SR3ZTEe5BN1qsepJ6IbWG9YAahZBOAh7CkJ059RxyMqT9SOlA=='),(74,10,'api_id','MspTtEngU+P9eBrgiwT2SYKBRNwsFIheusvO4XBEJ93TQUHDDPwh0HafahA9wYA7RW8fOhfn2qomRjdBqYt1Xw=='),(75,10,'secret_key','owVSvjHp0IbRIrsliHVqqBrH6jF0lvr5n0apm8NCBULBGN2aQerB8VlCpMEXAy020m3Z64SrJaTH+Rs1lf7lPJPsDEf8lF+ZO6vQMl2fZGngwydpucdt0FmjShAqWiM5nt4EjNV5hbYROhMuQoO3uqSmyL55KH/IcagFqv0qgaM='),(76,10,'processor','VKfHk2Ijp6wi72TVgHR5WhtmKNN6jvarT8HosFgFPx9Ld8DlzuvXQHmC/1cOkhOlRkJldkqk2JLa3lSKTGl+Rg=='),(77,10,'dba_name','RbyWUTT52ftP+ib0i1w7PQWA/XhDTE7BNGkIkaaUilFE5F2+wC5Q6Kuso1CKm5d4Dgwh139T0xEKMBJhBbyMzg=='),(71,10,'mode','VcaGAEF8rZPPgr4XFj9b01NrlDa9Ybo7D/vAIJz+p7LHOLEbLRg8+inb3Q6J0Foyq8ABjjDHfN1movpw7DrBTQ=='),(84,11,'currency','j3P+2Gp14n3Y3SwvEuuaUyJdF6wm/IAxrPNPiUHf4hVqy2FdqTdzy3475kqVisRBK+h2LdAkw0rkqIA1wCgeEw=='),(85,11,'merchant_type','hcVrPJVZo8YhYWzd68EOu9+GWuuTKeBJN0UAX89wSqj7UG1HqTn81KopGw9sRA4dP8EeMOatnQWmiT/pIDw8tg=='),(86,11,'api_id','qU/onuwfhfB/Ta78zcBd6GvMoOmv8xcdlsMhZC09Mmkmi0GGmh1kv3DNGUXo+vOPXhRancKWQzhrS1N0YBJpTg=='),(87,11,'secret_key','e4aE9zuXdabch6kkao/VbfJ3Smk8qda0L0TUbOR1g+KzVOP22hDCB+9qSqG2ZsMZhLQz1WJ1b/XiraQiOuISuzImw4nJc6DsaA4iZli6tXEL7G0GOnoJnA1Xj18oxs/sSPDDmDLte1+yNU9FkqcKBjd8z/Nonk+0dF/ADTcJtFE='),(88,11,'processor','Z+tb9s432OAtdPS/+Z901WVIOVeF7hp+6NPgjtn+8s61GGS9a81GMNZp1YZXEsXg6iApdpPJ2ajx44z8u47rKQ=='),(89,11,'dba_name','mxVeg6N49iNHs3EDtgN+Y8nPhWtxeL1O63X52yadHHd4cXjkNMY8oxW64zhJMJ/aahf1XAnCa3mhQSXS0PFfIg=='),(90,11,'dba_city','ji5eqfKrsXk6awpOhoo7ggOaPv//moj3X3FybLxhq0Lfcw7FwMA8nEl/31PRUny3MbhRlml8PmBKy3fO4z0n+g=='),(78,10,'dba_city','Qm90uIgaiEAXwO9U1CeM4M2R3/C7iwClfRWPFheJR+eOiHDDRkHor79D88hqaAFLQDv8rd/zdYxZv1rDkLTUtA=='),(79,10,'accept_visa','ktGv+9pK2+I7kr7fJG5/DIei6xJ+rYypJIwmQ7OPvPTB1bYqI4INgmAuujlWhb61b2pDaccLEZAbOIE+1bbEIQ=='),(80,10,'accept_mc','iamWs3UnaoJ+Ui/TetB0mttpVC4Q3lBhlgQMRhXkWDOkiWu/t9ZvKn9l01zxuDGXrCn7dKFRoUGikbpLEnZHLg=='),(81,10,'accept_discover','HxmCx+87lkb3oWSuhUPcsvpvd7/COnn2X/veWJw9hbf3Q9Pw3kbqLIPu6+ZJu0lLrcL2CSBBSy3+/6gYXqICRQ=='),(82,10,'accept_amex','39XGbxMOUVZQSEdDstg+BINcYjCQHsczke7y9MZbTs+/e7JSGj9ybVxhtNCHLg4kztrYfHz2zySuRCQq1jdstg=='),(93,11,'accept_discover','t3WgH7rcRTX9PcCk1ws8t3VWzWgeTVsAor08I7q1s/a/e7JSGj9ybVxhtNCHLg4kztrYfHz2zySuRCQq1jdstg=='),(94,11,'accept_amex','wSp+BNFryrviIP3khfOC4UzY3/OTtjONzEhqJd0QIhr3Q9Pw3kbqLIPu6+ZJu0lLrcL2CSBBSy3+/6gYXqICRQ==');
/*!40000 ALTER TABLE `client_gateway_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_gateways`
--

DROP TABLE IF EXISTS `client_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_gateways` (
  `client_gateway_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `external_api_id` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `create_date` date NOT NULL,
  PRIMARY KEY (`client_gateway_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_gateways`
--

LOCK TABLES `client_gateways` WRITE;
/*!40000 ALTER TABLE `client_gateways` DISABLE KEYS */;
INSERT INTO `client_gateways` VALUES (11,1000,21,'Macropay',1,0,'2016-09-20');
/*!40000 ALTER TABLE `client_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_log`
--

DROP TABLE IF EXISTS `client_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_log` (
  `client_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `trigger_id` int(11) NOT NULL,
  `client_log_date` datetime NOT NULL,
  `variables` text NOT NULL,
  PRIMARY KEY (`client_log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_log`
--

LOCK TABLES `client_log` WRITE;
/*!40000 ALTER TABLE `client_log` DISABLE KEYS */;
INSERT INTO `client_log` VALUES (1,1000,9,'2016-09-20 23:42:49','a:14:{s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";s:6:\"amount\";s:4:\"0.00\";}'),(2,1000,1,'2016-09-20 23:46:55','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-20 11:46\";s:9:\"charge_id\";s:2:\"16\";s:14:\"card_last_four\";s:4:\"4444\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(3,1000,1,'2016-09-20 23:52:06','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-20 11:52\";s:9:\"charge_id\";s:2:\"18\";s:14:\"card_last_four\";s:4:\"4444\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(4,1000,1,'2016-09-20 23:52:59','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-20 11:52\";s:9:\"charge_id\";s:2:\"19\";s:14:\"card_last_four\";s:4:\"4444\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(5,1000,1,'2016-09-21 00:02:47','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-21 12:02\";s:9:\"charge_id\";s:2:\"20\";s:14:\"card_last_four\";s:4:\"1111\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(6,1000,1,'2016-09-21 00:03:43','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-21 12:03\";s:9:\"charge_id\";s:2:\"21\";s:14:\"card_last_four\";s:4:\"1111\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(7,1000,1,'2016-09-21 13:16:31','a:17:{s:6:\"amount\";s:5:\"10.00\";s:4:\"date\";s:16:\"2016-09-21 01:16\";s:9:\"charge_id\";s:2:\"33\";s:14:\"card_last_four\";s:4:\"0074\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(8,1000,1,'2016-09-21 14:02:46','a:17:{s:6:\"amount\";s:5:\"50.00\";s:4:\"date\";s:16:\"2016-09-21 02:02\";s:9:\"charge_id\";s:2:\"41\";s:14:\"card_last_four\";s:4:\"0002\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}'),(9,1000,1,'2016-09-21 14:05:43','a:17:{s:6:\"amount\";s:5:\"50.00\";s:4:\"date\";s:16:\"2016-09-21 02:05\";s:9:\"charge_id\";s:2:\"42\";s:14:\"card_last_four\";s:4:\"1111\";s:11:\"customer_id\";s:1:\"3\";s:19:\"customer_first_name\";s:5:\"Ahmet\";s:18:\"customer_last_name\";s:9:\"Gudenoglu\";s:20:\"customer_internal_id\";s:0:\"\";s:16:\"customer_company\";s:19:\"SEMITE DOO, BEOGRAD\";s:18:\"customer_address_1\";s:28:\"Kaludjerica Karadjordjeva 45\";s:18:\"customer_address_2\";s:0:\"\";s:13:\"customer_city\";s:6:\"Grocka\";s:14:\"customer_state\";s:8:\"Belgrade\";s:20:\"customer_postal_code\";s:5:\"11130\";s:16:\"customer_country\";s:2:\"RS\";s:14:\"customer_email\";s:33:\"ahmet.gudenoglu@semitepayment.com\";s:14:\"customer_phone\";s:13:\"+381656728972\";}');
/*!40000 ALTER TABLE `client_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_types`
--

DROP TABLE IF EXISTS `client_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_types` (
  `client_type_id` int(11) NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`client_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_types`
--

LOCK TABLES `client_types` WRITE;
/*!40000 ALTER TABLE `client_types` DISABLE KEYS */;
INSERT INTO `client_types` VALUES (1,'Service Provider'),(2,'End User'),(3,'Administrator');
/*!40000 ALTER TABLE `client_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country` int(3) NOT NULL,
  `gmt_offset` varchar(7) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `parent_client_id` int(11) NOT NULL DEFAULT '0',
  `api_id` varchar(100) NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `default_gateway_id` int(11) NOT NULL DEFAULT '0',
  `suspended` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1000,3,'Ahmet','GOUDENOGLU','SEMITE DOO, BEOGRAD','Kaludjerica Karadjordjeva 45','','Grocka','','11130',688,'UP1','+381656728972','ahmet.gudenoglu@semitepayment.com',1000,'0GFCS2VLAGHR6LUQOURD','JNVZSVJQJNJACXZHIQH41BUX5JET2121QXODDHGB','admin','ba08e7c7f0092cfe34001a7985bf7ed5',11,0,0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `iso2` varchar(2) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'AF','AFG','Afghanistan'),(248,'AX','ALA','Aland Islands'),(8,'AL','ALB','Albania'),(12,'DZ','DZA','Algeria'),(16,'AS','ASM','American Samoa'),(20,'AD','AND','Andorra'),(24,'AO','AGO','Angola'),(660,'AI','AIA','Anguilla'),(10,'AQ','ATA','Antarctica'),(28,'AG','ATG','Antigua and Barbuda'),(32,'AR','ARG','Argentina'),(51,'AM','ARM','Armenia'),(533,'AW','ABW','Aruba'),(36,'AU','AUS','Australia'),(40,'AT','AUT','Austria'),(31,'AZ','AZE','Azerbaijan'),(44,'BS','BHS','Bahamas'),(48,'BH','BHR','Bahrain'),(50,'BD','BGD','Bangladesh'),(52,'BB','BRB','Barbados'),(112,'BY','BLR','Belarus'),(56,'BE','BEL','Belgium'),(84,'BZ','BLZ','Belize'),(204,'BJ','BEN','Benin'),(60,'BM','BMU','Bermuda'),(64,'BT','BTN','Bhutan'),(68,'BO','BOL','Bolivia'),(70,'BA','BIH','Bosnia and Herzegovina'),(72,'BW','BWA','Botswana'),(74,'BV','BVT','Bouvet Island'),(76,'BR','BRA','Brazil'),(86,'IO','IOT','British Indian Ocean Territory'),(96,'BN','BRN','Brunei Darussalam'),(100,'BG','BGR','Bulgaria'),(854,'BF','BFA','Burkina Faso'),(108,'BI','BDI','Burundi'),(116,'KH','KHM','Cambodia'),(120,'CM','CMR','Cameroon'),(124,'CA','CAN','Canada'),(132,'CV','CPV','Cape Verde'),(136,'KY','CYM','Cayman Islands'),(140,'CF','CAF','Central African Republic'),(148,'TD','TCD','Chad'),(152,'CL','CHL','Chile'),(156,'CN','CHN','China'),(162,'CX','CXR','Christmas Island'),(166,'CC','CCK','Cocos (Keeling) Islands'),(170,'CO','COL','Colombia'),(174,'KM','COM','Comoros'),(178,'CG','COG','Congo'),(180,'CD','COD','Congo, Democratic Republic of the'),(184,'CK','COK','Cook Islands'),(188,'CR','CRI','Costa Rica'),(384,'CI','CIV','C™te d\'Ivoire'),(191,'HR','HRV','Croatia'),(192,'CU','CUB','Cuba'),(196,'CY','CYP','Cyprus'),(203,'CZ','CZE','Czech Republic'),(208,'DK','DNK','Denmark'),(262,'DJ','DJI','Djibouti'),(212,'DM','DMA','Dominica'),(214,'DO','DOM','Dominican Republic'),(218,'EC','ECU','Ecuador'),(818,'EG','EGY','Egypt'),(222,'SV','SLV','El Salvador'),(226,'GQ','GNQ','Equatorial Guinea'),(232,'ER','ERI','Eritrea'),(233,'EE','EST','Estonia'),(231,'ET','ETH','Ethiopia'),(238,'FK','FLK','Falkland Islands (Malvinas)'),(234,'FO','FRO','Faroe Islands'),(242,'FJ','FJI','Fiji'),(246,'FI','FIN','Finland'),(250,'FR','FRA','France'),(254,'GF','GUF','French Guiana'),(258,'PF','PYF','French Polynesia'),(260,'TF','ATF','French Southern Territories'),(266,'GA','GAB','Gabon'),(270,'GM','GMB','Gambia'),(268,'GE','GEO','Georgia'),(276,'DE','DEU','Germany'),(288,'GH','GHA','Ghana'),(292,'GI','GIB','Gibraltar'),(300,'GR','GRC','Greece'),(304,'GL','GRL','Greenland'),(308,'GD','GRD','Grenada'),(312,'GP','GLP','Guadeloupe'),(316,'GU','GUM','Guam'),(320,'GT','GTM','Guatemala'),(831,'GG','GGY','Guernsey'),(324,'GN','GIN','Guinea'),(624,'GW','GNB','Guinea-Bissau'),(328,'GY','GUY','Guyana'),(332,'HT','HTI','Haiti'),(334,'HM','HMD','Heard Island and McDonald Islands'),(336,'VA','VAT','Holy See (Vatican City State)'),(340,'HN','HND','Honduras'),(344,'HK','HKG','Hong Kong'),(348,'HU','HUN','Hungary'),(352,'IS','ISL','Iceland'),(356,'IN','IND','India'),(360,'ID','IDN','Indonesia'),(364,'IR','IRN','Iran, Islamic Republic of'),(368,'IQ','IRQ','Iraq'),(372,'IE','IRL','Ireland'),(833,'IM','IMN','Isle of Man'),(376,'IL','ISR','Israel'),(380,'IT','ITA','Italy'),(388,'JM','JAM','Jamaica'),(392,'JP','JPN','Japan'),(832,'JE','JEY','Jersey'),(400,'JO','JOR','Jordan'),(398,'KZ','KAZ','Kazakhstan'),(404,'KE','KEN','Kenya'),(296,'KI','KIR','Kiribati'),(408,'KP','PRK','Korea, Democratic People\'s Republic of'),(410,'KR','KOR','Korea, Republic of'),(414,'KW','KWT','Kuwait'),(417,'KG','KGZ','Kyrgyzstan'),(418,'LA','LAO','Lao People\'s Democratic Republic'),(428,'LV','LVA','Latvia'),(422,'LB','LBN','Lebanon'),(426,'LS','LSO','Lesotho'),(430,'LR','LBR','Liberia'),(434,'LY','LBY','Libyan Arab Jamahiriya'),(438,'LI','LIE','Liechtenstein'),(440,'LT','LTU','Lithuania'),(442,'LU','LUX','Luxembourg'),(446,'MO','MAC','Macao'),(807,'MK','MKD','Macedonia, the former Yugoslav Republic of'),(450,'MG','MDG','Madagascar'),(454,'MW','MWI','Malawi'),(458,'MY','MYS','Malaysia'),(462,'MV','MDV','Maldives'),(466,'ML','MLI','Mali'),(470,'MT','MLT','Malta'),(584,'MH','MHL','Marshall Islands'),(474,'MQ','MTQ','Martinique'),(478,'MR','MRT','Mauritania'),(480,'MU','MUS','Mauritius'),(175,'YT','MYT','Mayotte'),(484,'MX','MEX','Mexico'),(583,'FM','FSM','Micronesia, Federated States of'),(498,'MD','MDA','Moldova'),(492,'MC','MCO','Monaco'),(496,'MN','MNG','Mongolia'),(499,'ME','MNE','Montenegro'),(500,'MS','MSR','Montserrat'),(504,'MA','MAR','Morocco'),(508,'MZ','MOZ','Mozambique'),(104,'MM','MMR','Myanmar'),(516,'NA','NAM','Namibia'),(520,'NR','NRU','Nauru'),(524,'NP','NPL','Nepal'),(528,'NL','NLD','Netherlands'),(530,'AN','ANT','Netherlands Antilles'),(540,'NC','NCL','New Caledonia'),(554,'NZ','NZL','New Zealand'),(558,'NI','NIC','Nicaragua'),(562,'NE','NER','Niger'),(566,'NG','NGA','Nigeria'),(570,'NU','NIU','Niue'),(574,'NF','NFK','Norfolk Island'),(580,'MP','MNP','Northern Mariana Islands'),(578,'NO','NOR','Norway'),(512,'OM','OMN','Oman'),(586,'PK','PAK','Pakistan'),(585,'PW','PLW','Palau'),(275,'PS','PSE','Palestinian Territory, Occupied'),(591,'PA','PAN','Panama'),(598,'PG','PNG','Papua New Guinea'),(600,'PY','PRY','Paraguay'),(604,'PE','PER','Peru'),(608,'PH','PHL','Philippines'),(612,'PN','PCN','Pitcairn'),(616,'PL','POL','Poland'),(620,'PT','PRT','Portugal'),(630,'PR','PRI','Puerto Rico'),(634,'QA','QAT','Qatar'),(638,'RE','REU','RŽunion'),(642,'RO','ROU','Romania'),(643,'RU','RUS','Russian Federation'),(646,'RW','RWA','Rwanda'),(652,'BL','BLM','Saint BarthŽlemy'),(654,'SH','SHN','Saint Helena'),(659,'KN','KNA','Saint Kitts and Nevis'),(662,'LC','LCA','Saint Lucia'),(663,'MF','MAF','Saint Martin (French part)'),(666,'PM','SPM','Saint Pierre and Miquelon'),(670,'VC','VCT','Saint Vincent and the Grenadines'),(882,'WS','WSM','Samoa'),(674,'SM','SMR','San Marino'),(678,'ST','STP','Sao Tome and Principe'),(682,'SA','SAU','Saudi Arabia'),(686,'SN','SEN','Senegal'),(688,'RS','SRB','Serbia[5]'),(690,'SC','SYC','Seychelles'),(694,'SL','SLE','Sierra Leone'),(702,'SG','SGP','Singapore'),(703,'SK','SVK','Slovakia'),(705,'SI','SVN','Slovenia'),(90,'SB','SLB','Solomon Islands'),(706,'SO','SOM','Somalia'),(710,'ZA','ZAF','South Africa'),(239,'GS','SGS','South Georgia and the South Sandwich Islands'),(724,'ES','ESP','Spain'),(144,'LK','LKA','Sri Lanka'),(736,'SD','SDN','Sudan'),(740,'SR','SUR','Suriname'),(744,'SJ','SJM','Svalbard and Jan Mayen'),(748,'SZ','SWZ','Swaziland'),(752,'SE','SWE','Sweden'),(756,'CH','CHE','Switzerland'),(760,'SY','SYR','Syrian Arab Republic'),(158,'TW','TWN','Taiwan, Province of China'),(762,'TJ','TJK','Tajikistan'),(834,'TZ','TZA','Tanzania, United Republic of'),(764,'TH','THA','Thailand'),(626,'TL','TLS','Timor-Leste'),(768,'TG','TGO','Togo'),(772,'TK','TKL','Tokelau'),(776,'TO','TON','Tonga'),(780,'TT','TTO','Trinidad and Tobago'),(788,'TN','TUN','Tunisia'),(792,'TR','TUR','Turkey'),(795,'TM','TKM','Turkmenistan'),(796,'TC','TCA','Turks and Caicos Islands'),(798,'TV','TUV','Tuvalu'),(800,'UG','UGA','Uganda'),(804,'UA','UKR','Ukraine'),(784,'AE','ARE','United Arab Emirates'),(826,'GB','GBR','United Kingdom'),(840,'US','USA','United States'),(581,'UM','UMI','United States Minor Outlying Islands'),(858,'UY','URY','Uruguay'),(860,'UZ','UZB','Uzbekistan'),(548,'VU','VUT','Vanuatu'),(862,'VE','VEN','Venezuela'),(704,'VN','VNM','Viet Nam'),(92,'VG','VGB','Virgin Islands, British'),(850,'VI','VIR','Virgin Islands, U.S.'),(876,'WF','WLF','Wallis and Futuna'),(732,'EH','ESH','Western Sahara'),(887,'YE','YEM','Yemen'),(894,'ZM','ZMB','Zambia'),(716,'ZW','ZWE','Zimbabwe'),(895,'CW','CW','Curaçao'),(896,'SX','SX','Sint Maarten');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_types`
--

DROP TABLE IF EXISTS `coupon_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_types` (
  `coupon_type_id` int(3) NOT NULL,
  `coupon_type_name` varchar(255) NOT NULL,
  KEY `coupon_type_id` (`coupon_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_types`
--

LOCK TABLES `coupon_types` WRITE;
/*!40000 ALTER TABLE `coupon_types` DISABLE KEYS */;
INSERT INTO `coupon_types` VALUES (1,'Charge - Price Reduction'),(2,'Recur - Total Price Reduction'),(3,'Recur - Recurring Price Reduction'),(4,'Recur - Initial Charge Price Reduction'),(5,'Recur - Free Trial');
/*!40000 ALTER TABLE `coupon_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) unsigned NOT NULL,
  `coupon_type_id` int(11) unsigned NOT NULL,
  `coupon_name` varchar(60) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_start_date` date NOT NULL,
  `coupon_end_date` date NOT NULL,
  `coupon_max_uses` int(11) unsigned NOT NULL,
  `coupon_customer_limit` tinyint(1) NOT NULL,
  `coupon_reduction_type` tinyint(1) NOT NULL,
  `coupon_reduction_amt` float DEFAULT NULL,
  `coupon_trial_length` int(4) NOT NULL,
  `coupon_deleted` tinyint(1) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons_plans`
--

DROP TABLE IF EXISTS `coupons_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_plans` (
  `coupon_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  KEY `coupon_id` (`coupon_id`,`plan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_plans`
--

LOCK TABLES `coupons_plans` WRITE;
/*!40000 ALTER TABLE `coupons_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `internal_id` varchar(200) NOT NULL,
  `address_1` varchar(200) NOT NULL,
  `address_2` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `postal_code` varchar(200) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1001,'Ahmet','Gudenoglu','SEMITE DOO, BEOGRAD','','Kaludjerica Karadjordjeva 45','','Grocka','Belgrade','11130',688,'+381656728972','ahmet.gudenoglu@semitepayment.com',1,'2016-09-20 09:33:52'),(2,1001,'Bojan','Bankovic','Octagon Engineering DOO','','Test Adress','','Nis','Nis','18000',688,'321321321321321','test@test.com',1,'2016-09-20 14:02:07'),(3,1000,'Ahmet','Gudenoglu','SEMITE DOO, BEOGRAD','','Kaludjerica Karadjordjeva 45','','Grocka','Belgrade','11130',688,'+381656728972','ahmet.gudenoglu@semitepayment.com',1,'2016-09-20 23:42:49');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_triggers`
--

DROP TABLE IF EXISTS `email_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_triggers` (
  `email_trigger_id` int(11) NOT NULL AUTO_INCREMENT,
  `system_name` varchar(50) NOT NULL,
  `human_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `available_variables` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`email_trigger_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_triggers`
--

LOCK TABLES `email_triggers` WRITE;
/*!40000 ALTER TABLE `email_triggers` DISABLE KEYS */;
INSERT INTO `email_triggers` VALUES (1,'charge','Charge','Basic charge, not linked to a subscription.','a:17:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:9:\"charge_id\";i:3;s:14:\"card_last_four\";i:4;s:11:\"customer_id\";i:5;s:20:\"customer_internal_id\";i:6;s:19:\"customer_first_name\";i:7;s:18:\"customer_last_name\";i:8;s:16:\"customer_company\";i:9;s:18:\"customer_address_1\";i:10;s:18:\"customer_address_2\";i:11;s:13:\"customer_city\";i:12;s:14:\"customer_state\";i:13;s:20:\"customer_postal_code\";i:14;s:16:\"customer_country\";i:15;s:14:\"customer_phone\";i:16;s:14:\"customer_email\";}',1),(2,'recurring_charge','Recurring Charge','Subsequent recurring charges (all but the first charge).','a:21:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:9:\"charge_id\";i:4;s:14:\"card_last_four\";i:5;s:16:\"next_charge_date\";i:6;s:7:\"plan_id\";i:7;s:9:\"plan_name\";i:8;s:11:\"customer_id\";i:9;s:20:\"customer_internal_id\";i:10;s:19:\"customer_first_name\";i:11;s:18:\"customer_last_name\";i:12;s:16:\"customer_company\";i:13;s:18:\"customer_address_1\";i:14;s:18:\"customer_address_2\";i:15;s:13:\"customer_city\";i:16;s:14:\"customer_state\";i:17;s:20:\"customer_postal_code\";i:18;s:16:\"customer_country\";i:19;s:14:\"customer_phone\";i:20;s:14:\"customer_email\";}',1),(3,'recurring_expire','Recurring Expiration','Subscription ends gracefully at expiration date with max_occurrences/end_date limitation','a:23:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:9:\"charge_id\";i:4;s:14:\"card_last_four\";i:5;s:10:\"start_date\";i:6;s:8:\"end_date\";i:7;s:16:\"next_charge_date\";i:8;s:7:\"plan_id\";i:9;s:9:\"plan_name\";i:10;s:11:\"customer_id\";i:11;s:20:\"customer_internal_id\";i:12;s:19:\"customer_first_name\";i:13;s:18:\"customer_last_name\";i:14;s:16:\"customer_company\";i:15;s:18:\"customer_address_1\";i:16;s:18:\"customer_address_2\";i:17;s:13:\"customer_city\";i:18;s:14:\"customer_state\";i:19;s:20:\"customer_postal_code\";i:20;s:16:\"customer_country\";i:21;s:14:\"customer_phone\";i:22;s:14:\"customer_email\";}',1),(4,'recurring_cancel','Recurring Cancellation','Subscription ends with an explicit CancelRecurring call.  Not a graceful expiration.','a:18:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:7:\"plan_id\";i:4;s:9:\"plan_name\";i:5;s:11:\"customer_id\";i:6;s:20:\"customer_internal_id\";i:7;s:19:\"customer_first_name\";i:8;s:18:\"customer_last_name\";i:9;s:16:\"customer_company\";i:10;s:18:\"customer_address_1\";i:11;s:18:\"customer_address_2\";i:12;s:13:\"customer_city\";i:13;s:14:\"customer_state\";i:14;s:20:\"customer_postal_code\";i:15;s:16:\"customer_country\";i:16;s:14:\"customer_phone\";i:17;s:14:\"customer_email\";}',1),(5,'recurring_expiring_in_week','Recurring to Expire in a Week','Subscription will expire in one week.','a:19:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:11:\"expiry_date\";i:4;s:7:\"plan_id\";i:5;s:9:\"plan_name\";i:6;s:11:\"customer_id\";i:7;s:20:\"customer_internal_id\";i:8;s:19:\"customer_first_name\";i:9;s:18:\"customer_last_name\";i:10;s:16:\"customer_company\";i:11;s:18:\"customer_address_1\";i:12;s:18:\"customer_address_2\";i:13;s:13:\"customer_city\";i:14;s:14:\"customer_state\";i:15;s:20:\"customer_postal_code\";i:16;s:16:\"customer_country\";i:17;s:14:\"customer_phone\";i:18;s:14:\"customer_email\";}',1),(6,'recurring_expiring_in_month','Recurring to Expire in a Month','Subscription will expire in one month.','a:19:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:11:\"expiry_date\";i:4;s:7:\"plan_id\";i:5;s:9:\"plan_name\";i:6;s:11:\"customer_id\";i:7;s:20:\"customer_internal_id\";i:8;s:19:\"customer_first_name\";i:9;s:18:\"customer_last_name\";i:10;s:16:\"customer_company\";i:11;s:18:\"customer_address_1\";i:12;s:18:\"customer_address_2\";i:13;s:13:\"customer_city\";i:14;s:14:\"customer_state\";i:15;s:20:\"customer_postal_code\";i:16;s:16:\"customer_country\";i:17;s:14:\"customer_phone\";i:18;s:14:\"customer_email\";}',1),(7,'recurring_autorecur_in_week','Recurring to Autocharge in a Week','Subscription will Autocharge in one week.','a:19:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:16:\"next_charge_date\";i:4;s:7:\"plan_id\";i:5;s:9:\"plan_name\";i:6;s:11:\"customer_id\";i:7;s:20:\"customer_internal_id\";i:8;s:19:\"customer_first_name\";i:9;s:18:\"customer_last_name\";i:10;s:16:\"customer_company\";i:11;s:18:\"customer_address_1\";i:12;s:18:\"customer_address_2\";i:13;s:13:\"customer_city\";i:14;s:14:\"customer_state\";i:15;s:20:\"customer_postal_code\";i:16;s:16:\"customer_country\";i:17;s:14:\"customer_phone\";i:18;s:14:\"customer_email\";}',1),(8,'recurring_autorecur_in_month','Recurring to Autocharge in a Month','Subscription will Autocharge in one month.','a:19:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:16:\"next_charge_date\";i:4;s:7:\"plan_id\";i:5;s:9:\"plan_name\";i:6;s:11:\"customer_id\";i:7;s:20:\"customer_internal_id\";i:8;s:19:\"customer_first_name\";i:9;s:18:\"customer_last_name\";i:10;s:16:\"customer_company\";i:11;s:18:\"customer_address_1\";i:12;s:18:\"customer_address_2\";i:13;s:13:\"customer_city\";i:14;s:14:\"customer_state\";i:15;s:20:\"customer_postal_code\";i:16;s:16:\"customer_country\";i:17;s:14:\"customer_phone\";i:18;s:14:\"customer_email\";}',1),(9,'new_customer','New Customer','When a new customer is created either through NewCustomer or embedded < customer> information in a Charge/Recur call','a:13:{i:0;s:11:\"customer_id\";i:1;s:20:\"customer_internal_id\";i:2;s:19:\"customer_first_name\";i:3;s:18:\"customer_last_name\";i:4;s:16:\"customer_company\";i:5;s:18:\"customer_address_1\";i:6;s:18:\"customer_address_2\";i:7;s:13:\"customer_city\";i:8;s:14:\"customer_state\";i:9;s:20:\"customer_postal_code\";i:10;s:16:\"customer_country\";i:11;s:14:\"customer_phone\";i:12;s:14:\"customer_email\";}',1),(10,'new_recurring','New Recurring','The first recurring charge','a:21:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:9:\"charge_id\";i:4;s:14:\"card_last_four\";i:5;s:16:\"next_charge_date\";i:6;s:7:\"plan_id\";i:7;s:9:\"plan_name\";i:8;s:11:\"customer_id\";i:9;s:20:\"customer_internal_id\";i:10;s:19:\"customer_first_name\";i:11;s:18:\"customer_last_name\";i:12;s:16:\"customer_company\";i:13;s:18:\"customer_address_1\";i:14;s:18:\"customer_address_2\";i:15;s:13:\"customer_city\";i:16;s:14:\"customer_state\";i:17;s:20:\"customer_postal_code\";i:18;s:16:\"customer_country\";i:19;s:14:\"customer_phone\";i:20;s:14:\"customer_email\";}',1),(11,'recurring_fail','Recurring Fail','A subscription fails due to a problem charging the credit card on a repeat billing.','a:18:{i:0;s:6:\"amount\";i:1;s:4:\"date\";i:2;s:12:\"recurring_id\";i:3;s:7:\"plan_id\";i:4;s:9:\"plan_name\";i:5;s:11:\"customer_id\";i:6;s:20:\"customer_internal_id\";i:7;s:19:\"customer_first_name\";i:8;s:18:\"customer_last_name\";i:9;s:16:\"customer_company\";i:10;s:18:\"customer_address_1\";i:11;s:18:\"customer_address_2\";i:12;s:13:\"customer_city\";i:13;s:14:\"customer_state\";i:14;s:20:\"customer_postal_code\";i:15;s:16:\"customer_country\";i:16;s:14:\"customer_phone\";i:17;s:14:\"customer_email\";}',1);
/*!40000 ALTER TABLE `email_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_apis`
--

DROP TABLE IF EXISTS `external_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_apis` (
  `external_api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `prod_url` varchar(255) NOT NULL,
  `test_url` varchar(255) NOT NULL,
  `dev_url` varchar(255) NOT NULL,
  `arb_prod_url` varchar(255) NOT NULL,
  `arb_test_url` varchar(255) NOT NULL,
  `arb_dev_url` varchar(255) NOT NULL,
  PRIMARY KEY (`external_api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_apis`
--

LOCK TABLES `external_apis` WRITE;
/*!40000 ALTER TABLE `external_apis` DISABLE KEYS */;
INSERT INTO `external_apis` VALUES (21,'semite_gw','Semite','','','','','','');
/*!40000 ALTER TABLE `external_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `variables` text NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_authorizations`
--

DROP TABLE IF EXISTS `order_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_authorizations` (
  `order_authorization_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(200) NOT NULL,
  `tran_id` varchar(255) NOT NULL,
  `authorization_code` varchar(200) NOT NULL,
  `security_key` varchar(200) NOT NULL,
  PRIMARY KEY (`order_authorization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_authorizations`
--

LOCK TABLES `order_authorizations` WRITE;
/*!40000 ALTER TABLE `order_authorizations` DISABLE KEYS */;
INSERT INTO `order_authorizations` VALUES (1,'2','23','23',''),(2,'3','25','25',''),(3,'4','28','28',''),(4,'5','30','30',''),(5,'6','32','32',''),(6,'7','34','34',''),(7,'8','36','36',''),(8,'9','39','39',''),(9,'10','41','41',''),(10,'11','43','43',''),(11,'16','1','1',''),(12,'18','','',''),(13,'19','','',''),(14,'20','','',''),(15,'21','2','2',''),(16,'33','1000','1500',''),(17,'41','1008','1507',''),(18,'42','1009','1508','');
/*!40000 ALTER TABLE `order_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_data`
--

DROP TABLE IF EXISTS `order_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_data` (
  `order_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(250) NOT NULL,
  `order_data_key` varchar(25) NOT NULL,
  `order_data_value` text NOT NULL,
  PRIMARY KEY (`order_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_data`
--

LOCK TABLES `order_data` WRITE;
/*!40000 ALTER TABLE `order_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `subscription_id` int(11) NOT NULL,
  `card_last_four` varchar(4) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `customer_ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL,
  `refunded` tinyint(3) NOT NULL DEFAULT '0',
  `refund_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `client_id` (`client_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1001,10,1,0,'1111','50',0,'127.0.0.1',0,'2016-09-20 12:45:01',0,NULL),(2,1001,10,1,0,'1111','50',0,'127.0.0.1',1,'2016-09-20 12:45:26',1,'2016-09-20 13:18:54'),(3,1001,10,1,0,'1111','42.5',0,'127.0.0.1',1,'2016-09-20 13:20:33',1,'2016-09-20 13:53:21'),(4,1001,10,1,0,'1111','5',0,'127.0.0.1',1,'2016-09-20 13:27:18',1,'2016-09-20 13:30:06'),(5,1001,10,1,0,'1111','11',0,'127.0.0.1',1,'2016-09-20 13:31:11',1,'2016-09-20 13:32:21'),(6,1001,10,1,0,'1111','10',0,'127.0.0.1',1,'2016-09-20 13:37:13',1,'2016-09-20 13:39:36'),(7,1001,10,1,0,'1111','10',0,'127.0.0.1',1,'2016-09-20 13:42:01',1,'2016-09-20 13:50:01'),(8,1001,10,1,0,'0002','87.99',0,'127.0.0.1',1,'2016-09-20 13:50:52',1,'2016-09-20 13:51:43'),(9,1001,10,2,0,'1111','15.25',0,'127.0.0.1',1,'2016-09-20 14:02:07',1,'2016-09-20 14:03:06'),(10,1001,10,2,0,'1111','32.15',0,'127.0.0.1',1,'2016-09-20 16:48:07',1,'2016-09-20 16:48:36'),(11,1001,10,1,0,'1111','50',0,'127.0.0.1',1,'2016-09-20 17:19:12',1,'2016-09-20 17:25:36'),(12,1000,11,3,0,'4444','10',0,'127.0.0.1',0,'2016-09-20 23:42:49',0,NULL),(13,1000,11,3,0,'4444','10',0,'127.0.0.1',0,'2016-09-20 23:43:34',0,NULL),(14,1000,11,3,0,'4444','10',0,'127.0.0.1',0,'2016-09-20 23:44:18',0,NULL),(15,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-20 23:44:42',0,NULL),(16,1000,11,3,0,'4444','10',0,'127.0.0.1',1,'2016-09-20 23:46:52',1,'2016-09-21 00:08:52'),(17,1000,11,3,0,'4444','10',0,'127.0.0.1',0,'2016-09-20 23:47:48',0,NULL),(18,1000,11,3,0,'4444','10',0,'127.0.0.1',1,'2016-09-20 23:52:06',0,NULL),(19,1000,11,3,0,'4444','10',0,'127.0.0.1',1,'2016-09-20 23:52:59',0,NULL),(20,1000,11,3,0,'1111','10',0,'127.0.0.1',1,'2016-09-21 00:02:47',0,NULL),(21,1000,11,3,0,'1111','10',0,'127.0.0.1',1,'2016-09-21 00:03:40',0,NULL),(22,1000,11,3,0,'1111','300',0,'127.0.0.1',0,'2016-09-21 00:06:52',0,NULL),(23,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-21 00:18:13',0,NULL),(24,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-21 00:26:09',0,NULL),(25,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-21 00:26:42',0,NULL),(26,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-21 00:29:03',0,NULL),(27,1000,11,3,0,'1111','10',0,'127.0.0.1',0,'2016-09-21 00:34:34',0,NULL),(28,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 00:41:52',0,NULL),(29,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 00:43:28',0,NULL),(30,1000,11,3,0,'0074','15',0,'127.0.0.1',0,'2016-09-21 02:07:24',0,NULL),(31,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 13:14:46',0,NULL),(32,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 13:15:47',0,NULL),(33,1000,11,3,0,'0074','10',0,'127.0.0.1',1,'2016-09-21 13:16:28',1,'2016-09-21 13:27:41'),(34,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 13:17:34',0,NULL),(35,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 13:17:59',0,NULL),(36,1000,11,3,0,'0074','10',0,'127.0.0.1',0,'2016-09-21 13:19:00',0,NULL),(37,1000,11,3,0,'1111','50',0,'127.0.0.1',0,'2016-09-21 13:49:45',0,NULL),(38,1000,11,3,0,'0002','50',0,'127.0.0.1',0,'2016-09-21 13:55:58',0,NULL),(39,1000,11,3,0,'1111','50',0,'127.0.0.1',0,'2016-09-21 13:59:10',0,NULL),(40,1000,11,3,0,'1111','50',0,'127.0.0.1',0,'2016-09-21 14:00:19',0,NULL),(41,1000,11,3,0,'0002','50',0,'127.0.0.1',1,'2016-09-21 14:02:43',0,NULL),(42,1000,11,3,0,'1111','50',0,'127.0.0.1',1,'2016-09-21 14:05:39',1,'2016-09-21 14:12:12');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_types`
--

DROP TABLE IF EXISTS `plan_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_types` (
  `plan_type_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`plan_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_types`
--

LOCK TABLES `plan_types` WRITE;
/*!40000 ALTER TABLE `plan_types` DISABLE KEYS */;
INSERT INTO `plan_types` VALUES (1,'paid'),(2,'free');
/*!40000 ALTER TABLE `plan_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `plan_type_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `interval` int(11) NOT NULL,
  `occurrences` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `free_trial` int(11) NOT NULL,
  `notification_url` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_log`
--

DROP TABLE IF EXISTS `request_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_log` (
  `request_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `remote_ip` varchar(11) NOT NULL,
  `request` text NOT NULL,
  PRIMARY KEY (`request_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_log`
--

LOCK TABLES `request_log` WRITE;
/*!40000 ALTER TABLE `request_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_types`
--

DROP TABLE IF EXISTS `request_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_types` (
  `request_type_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  PRIMARY KEY (`request_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_types`
--

LOCK TABLES `request_types` WRITE;
/*!40000 ALTER TABLE `request_types` DISABLE KEYS */;
INSERT INTO `request_types` VALUES (1,'NewClient',''),(2,'NewGateway',''),(4,'NewCustomer',''),(3,'Charge',''),(9,'Recur',''),(10,'CancelRecurring',''),(11,'GetCharges',''),(12,'GetCharge',''),(13,'GetLatestCharge',''),(14,'GetRecurrings',''),(15,'UpdateRecurring',''),(16,'UpdateCustomer',''),(17,'DeleteCustomer',''),(18,'GetCustomers',''),(19,'UpdateClient',''),(20,'SuspendClient',''),(21,'UnsuspendClient',''),(22,'DeleteClient',''),(23,'UpdateAccount',''),(24,'MakeDefaultGateway',''),(25,'DeleteGateway',''),(26,'UpdateGateway',''),(27,'GetCustomer',''),(28,'CancelRecurringByCus','recurring_model'),(29,'GetRecurring',''),(30,'NewPlan',''),(31,'UpdatePlan',''),(32,'DeletePlan',''),(33,'GetPlan',''),(34,'GetPlans',''),(35,'NewEmail',''),(36,'UpdateEmail',''),(37,'DeleteEmail',''),(38,'GetEmailVariables',''),(39,'TestConnection',''),(40,'GetClients',''),(41,'GetClient',''),(42,'GetEmails',''),(43,'GetGateways',''),(44,'GetGateway',''),(45,'Refund',''),(46,'ChangeRecurringPlan',''),(47,'UpdateCreditCard','');
/*!40000 ALTER TABLE `request_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `required_fields`
--

DROP TABLE IF EXISTS `required_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `required_fields` (
  `required_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type_id` int(11) NOT NULL,
  `field_name` varchar(20) NOT NULL,
  PRIMARY KEY (`required_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `required_fields`
--

LOCK TABLES `required_fields` WRITE;
/*!40000 ALTER TABLE `required_fields` DISABLE KEYS */;
INSERT INTO `required_fields` VALUES (1,1,'first_name'),(2,1,'last_name'),(3,1,'company'),(10,1,'email'),(13,3,'amount'),(14,3,'credit_card'),(15,9,'recur'),(16,9,'credit_card'),(17,5,'gateway_id'),(18,5,'customer_id'),(19,5,'order_id'),(23,6,'gateway_id'),(24,6,'credit_card'),(27,7,'customer_id'),(28,7,'gateway_id'),(29,7,'order_id'),(30,7,'amount'),(31,8,'customer_id'),(32,8,'gateway_id'),(33,8,'order_id'),(36,10,'gateway_id'),(37,10,'subscription_id'),(38,1,'username'),(39,1,'password'),(41,20,'client_id'),(42,21,'client_id'),(43,22,'client_id'),(44,23,'gateway_id'),(45,24,'gateway_id'),(46,25,'gateway_id'),(47,28,'customer_id'),(48,29,'recurring_id'),(49,35,'trigger'),(50,35,'email_subject'),(51,35,'email_body'),(53,35,'from_name'),(54,35,'from_email');
/*!40000 ALTER TABLE `required_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_long` varchar(20) NOT NULL DEFAULT '' COMMENT 'Common Name',
  `name_short` char(2) NOT NULL DEFAULT '' COMMENT 'USPS Abbreviation',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `name_long` (`name_long`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='US States';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL'),(2,'Alaska','AK'),(3,'Arizona','AZ'),(4,'Arkansas','AR'),(5,'California','CA'),(6,'Colorado','CO'),(7,'Connecticut','CT'),(8,'Delaware','DE'),(9,'Florida','FL'),(10,'Georgia','GA'),(11,'Hawaii','HI'),(12,'Idaho','ID'),(13,'Illinois','IL'),(14,'Indiana','IN'),(15,'Iowa','IA'),(16,'Kansas','KS'),(17,'Kentucky','KY'),(18,'Louisiana','LA'),(19,'Maine','ME'),(20,'Maryland','MD'),(21,'Massachusetts','MA'),(22,'Michigan','MI'),(23,'Minnesota','MN'),(24,'Mississippi','MS'),(25,'Missouri','MO'),(26,'Montana','MT'),(27,'Nebraska','NE'),(28,'Nevada','NV'),(29,'New Hampshire','NH'),(30,'New Jersey','NJ'),(31,'New Mexico','NM'),(32,'New York','NY'),(33,'North Carolina','NC'),(34,'North Dakota','ND'),(35,'Ohio','OH'),(36,'Oklahoma','OK'),(37,'Oregon','OR'),(38,'Pennsylvania','PA'),(39,'Rhode Island','RI'),(40,'South Carolina','SC'),(41,'South Dakota','SD'),(42,'Tennessee','TN'),(43,'Texas','TX'),(44,'Utah','UT'),(45,'Vermont','VT'),(46,'Virginia','VA'),(47,'Washington','WA'),(48,'West Virginia','WV'),(49,'Wisconsin','WI'),(50,'Wyoming','WY'),(51,'Alberta','AB'),(52,'British Columbia','BC'),(53,'Manitoba','MB'),(54,'New Brunswick','NB'),(55,'Newfoundland and Lab','NL'),(56,'Northwest Territorie','NT'),(57,'Nova Scotia','NS'),(58,'Nunavut','NU'),(59,'Ontario','ON'),(60,'Prince Edward Island','PE'),(61,'Quebec','QC'),(62,'Saskatchewan','SK'),(63,'Yukon','YT'),(64,'District of Columbia','DC');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `notification_url` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `last_charge` date NOT NULL,
  `next_charge` date NOT NULL,
  `number_charge_failures` int(11) NOT NULL DEFAULT '0',
  `number_occurrences` int(11) NOT NULL,
  `charge_interval` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `card_last_four` varchar(4) NOT NULL,
  `api_customer_reference` varchar(255) DEFAULT NULL,
  `api_payment_reference` varchar(255) DEFAULT NULL,
  `api_auth_number` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `renewed` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `cancel_date` datetime NOT NULL,
  `timestamp` date NOT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `plan_id` (`plan_id`),
  KEY `customer_id` (`customer_id`),
  KEY `coupon_id` (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `db_version` varchar(15) NOT NULL,
  PRIMARY KEY (`db_version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES ('1.993');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-21 17:08:08
