-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: accounts
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add association',7,'add_association'),(20,'Can change association',7,'change_association'),(21,'Can delete association',7,'delete_association'),(22,'Can add code',8,'add_code'),(23,'Can change code',8,'change_code'),(24,'Can delete code',8,'delete_code'),(25,'Can add nonce',9,'add_nonce'),(26,'Can change nonce',9,'change_nonce'),(27,'Can delete nonce',9,'delete_nonce'),(28,'Can add user social auth',10,'add_usersocialauth'),(29,'Can change user social auth',10,'change_usersocialauth'),(30,'Can delete user social auth',10,'delete_usersocialauth'),(31,'Can add partial',11,'add_partial'),(32,'Can change partial',11,'change_partial'),(33,'Can delete partial',11,'delete_partial'),(34,'Can add currency converter',12,'add_currencyconverter'),(35,'Can change currency converter',12,'change_currencyconverter'),(36,'Can delete currency converter',12,'delete_currencyconverter'),(37,'Can add customer bankaccount',13,'add_customerbankaccount'),(38,'Can change customer bankaccount',13,'change_customerbankaccount'),(39,'Can delete customer bankaccount',13,'delete_customerbankaccount'),(40,'Can add loan calculator',14,'add_loancalculator'),(41,'Can change loan calculator',14,'change_loancalculator'),(42,'Can delete loan calculator',14,'delete_loancalculator'),(43,'Can add registercustomer',15,'add_registercustomer'),(44,'Can change registercustomer',15,'change_registercustomer'),(45,'Can delete registercustomer',15,'delete_registercustomer'),(46,'Can add registercustomertranscations',16,'add_registercustomertranscations'),(47,'Can change registercustomertranscations',16,'change_registercustomertranscations'),(48,'Can delete registercustomertranscations',16,'delete_registercustomertranscations'),(49,'Can add userprofile',17,'add_userprofile'),(50,'Can change userprofile',17,'change_userprofile'),(51,'Can delete userprofile',17,'delete_userprofile'),(52,'Can add myaccount',17,'add_myaccount'),(53,'Can change myaccount',17,'change_myaccount'),(54,'Can delete myaccount',17,'delete_myaccount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$kTCul4mZr2O0$snPIdJO4M6YGcUkjy6flu8ZYJ4IV0347sIl9Lm5zx0U=','2018-06-16 09:31:19.292694',1,'admin','Florence','Namukwaya','admin@gmail.com',1,1,'2018-06-05 08:46:40.893359'),(2,'pbkdf2_sha256$100000$M5b1BkYLHyaX$v2WBR648l0HWEJZu3eyBYEndfZYYJ3FrI5Jy/Y1rCIk=','2018-06-12 12:45:31.167926',0,'flo','','','flo@gmail.com',0,1,'2018-06-05 12:48:26.963172'),(3,'!EzgZD8zQdWjCbjNHqFrR8Jmo8cxVnU8EdF8NpVkP','2018-06-19 09:32:41.088025',0,'floedwin','','','',0,1,'2018-06-13 08:34:20.493505'),(4,'!nv3E0O6zHYvmOm9TkCeEHeNWoqShhFp4AzVKESl1','2018-06-19 09:53:18.468194',0,'HannahFlorence9','Hannah','Florence','',0,1,'2018-06-13 08:47:14.924880'),(5,'pbkdf2_sha256$100000$63pMWPSIR1eF$00WBb53uz/r5FH6T8OPesyuujdT7ZAmNFh6iTS13tyg=','2018-06-19 09:54:14.810618',1,'Florence','','','florencenamukwaya@gmail.com',1,1,'2018-06-19 09:46:56.909859');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_currencyconverter`
--

DROP TABLE IF EXISTS `boards_currencyconverter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_currencyconverter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `amount_UGX` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_currencyconverter`
--

LOCK TABLES `boards_currencyconverter` WRITE;
/*!40000 ALTER TABLE `boards_currencyconverter` DISABLE KEYS */;
INSERT INTO `boards_currencyconverter` VALUES (1,1000,'USD',3750000);
/*!40000 ALTER TABLE `boards_currencyconverter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_customerbankaccount`
--

DROP TABLE IF EXISTS `boards_customerbankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_customerbankaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` int(11) NOT NULL,
  `residence` varchar(200) NOT NULL,
  `work_history` varchar(200) NOT NULL,
  `identification_information` int(11) NOT NULL,
  `next_of_kin` varchar(200) NOT NULL,
  `relationship` varchar(200) NOT NULL,
  `account_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_customerbankaccount`
--

LOCK TABLES `boards_customerbankaccount` WRITE;
/*!40000 ALTER TABLE `boards_customerbankaccount` DISABLE KEYS */;
INSERT INTO `boards_customerbankaccount` VALUES (1,'Florence Namukwaya','florencenamukwaya@gmail.com',701280731,'Entebbe','Engineer for 1 year now',234455,'Hilda','sister',2244);
/*!40000 ALTER TABLE `boards_customerbankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_loancalculator`
--

DROP TABLE IF EXISTS `boards_loancalculator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_loancalculator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `loan_period` varchar(200) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `results` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_loancalculator`
--

LOCK TABLES `boards_loancalculator` WRITE;
/*!40000 ALTER TABLE `boards_loancalculator` DISABLE KEYS */;
INSERT INTO `boards_loancalculator` VALUES (1,600000,'Two months',20,2);
/*!40000 ALTER TABLE `boards_loancalculator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_myaccount`
--

DROP TABLE IF EXISTS `boards_myaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_myaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `boards_userprofile_user_id_aa77e86c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_myaccount`
--

LOCK TABLES `boards_myaccount` WRITE;
/*!40000 ALTER TABLE `boards_myaccount` DISABLE KEYS */;
INSERT INTO `boards_myaccount` VALUES (1,'','','',0,'',2),(2,'','','',0,'',3),(3,'','','',0,'',4),(4,'','','',0,'',5);
/*!40000 ALTER TABLE `boards_myaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_registercustomer`
--

DROP TABLE IF EXISTS `boards_registercustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_registercustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` int(11) NOT NULL,
  `residence` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `next_of_kin` varchar(200) NOT NULL,
  `relationship` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_registercustomer`
--

LOCK TABLES `boards_registercustomer` WRITE;
/*!40000 ALTER TABLE `boards_registercustomer` DISABLE KEYS */;
INSERT INTO `boards_registercustomer` VALUES (1,'Florence','Namukwaya','florencenamukwaya@gmail.com',701280731,'Kampala','Software engineer','Hilda','sister');
/*!40000 ALTER TABLE `boards_registercustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_registercustomertranscations`
--

DROP TABLE IF EXISTS `boards_registercustomertranscations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_registercustomertranscations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Account_number` int(11) NOT NULL,
  `Transcation_type` varchar(200) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Transcation_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_registercustomertranscations`
--

LOCK TABLES `boards_registercustomertranscations` WRITE;
/*!40000 ALTER TABLE `boards_registercustomertranscations` DISABLE KEYS */;
INSERT INTO `boards_registercustomertranscations` VALUES (1,'Florence Namukwaya','florencenamukwaya@gmail.com',701280731,2244,'Deposit',5000000,'2018-06-12 09:49:42.000000');
/*!40000 ALTER TABLE `boards_registercustomertranscations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-06-05 08:48:35.752370','1','Florence',1,'[{\"added\": {}}]',15,1),(2,'2018-06-12 09:44:14.823129','1','LoanCalculator object (1)',1,'[{\"added\": {}}]',14,1),(3,'2018-06-12 09:46:08.415298','1','Florence Namukwaya',1,'[{\"added\": {}}]',13,1),(4,'2018-06-12 09:48:36.738015','1','CurrencyConverter object (1)',1,'[{\"added\": {}}]',12,1),(5,'2018-06-12 09:49:50.631855','1','Florence Namukwaya',1,'[{\"added\": {}}]',16,1),(6,'2018-06-12 09:57:03.197072','1','CurrencyConverter object (1)',2,'[]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'boards','currencyconverter'),(13,'boards','customerbankaccount'),(14,'boards','loancalculator'),(17,'boards','myaccount'),(15,'boards','registercustomer'),(16,'boards','registercustomertranscations'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'social_django','association'),(8,'social_django','code'),(9,'social_django','nonce'),(11,'social_django','partial'),(10,'social_django','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2018-06-05 08:39:13.903856'),(2,'accounts','0002_auto_20180605_1128','2018-06-05 08:39:15.633616'),(3,'contenttypes','0001_initial','2018-06-05 08:39:16.923516'),(4,'auth','0001_initial','2018-06-05 08:39:35.604508'),(5,'admin','0001_initial','2018-06-05 08:39:39.683928'),(6,'admin','0002_logentry_remove_auto_add','2018-06-05 08:39:39.805509'),(7,'contenttypes','0002_remove_content_type_name','2018-06-05 08:39:41.687402'),(8,'auth','0002_alter_permission_name_max_length','2018-06-05 08:39:43.244396'),(9,'auth','0003_alter_user_email_max_length','2018-06-05 08:39:45.007971'),(10,'auth','0004_alter_user_username_opts','2018-06-05 08:39:45.095499'),(11,'auth','0005_alter_user_last_login_null','2018-06-05 08:39:47.451884'),(12,'auth','0006_require_contenttypes_0002','2018-06-05 08:39:47.505029'),(13,'auth','0007_alter_validators_add_error_messages','2018-06-05 08:39:47.604906'),(14,'auth','0008_alter_user_username_max_length','2018-06-05 08:39:48.889103'),(15,'auth','0009_alter_user_last_name_max_length','2018-06-05 08:39:50.373686'),(16,'boards','0001_initial','2018-06-05 08:39:59.733814'),(17,'boards','0002_auto_20180601_1240','2018-06-05 08:40:05.315380'),(18,'boards','0003_currencyconverter_customerbankaccount_loancalculator_registercustomer_registercustomertranscations','2018-06-05 08:40:08.460823'),(19,'sessions','0001_initial','2018-06-05 08:40:09.051464'),(20,'default','0001_initial','2018-06-05 08:40:12.941416'),(21,'social_auth','0001_initial','2018-06-05 08:40:13.016012'),(22,'default','0002_add_related_name','2018-06-05 08:40:15.647509'),(23,'social_auth','0002_add_related_name','2018-06-05 08:40:15.735124'),(24,'default','0003_alter_email_max_length','2018-06-05 08:40:17.011282'),(25,'social_auth','0003_alter_email_max_length','2018-06-05 08:40:17.161338'),(26,'default','0004_auto_20160423_0400','2018-06-05 08:40:17.249966'),(27,'social_auth','0004_auto_20160423_0400','2018-06-05 08:40:17.332806'),(28,'social_auth','0005_auto_20160727_2333','2018-06-05 08:40:17.874896'),(29,'social_django','0006_partial','2018-06-05 08:40:18.695187'),(30,'social_django','0007_code_timestamp','2018-06-05 08:40:20.145369'),(31,'social_django','0008_partial_timestamp','2018-06-05 08:40:22.453885'),(32,'social_django','0004_auto_20160423_0400','2018-06-05 08:40:22.578605'),(33,'social_django','0003_alter_email_max_length','2018-06-05 08:40:22.638557'),(34,'social_django','0001_initial','2018-06-05 08:40:22.683142'),(35,'social_django','0002_add_related_name','2018-06-05 08:40:22.756908'),(36,'social_django','0005_auto_20160727_2333','2018-06-05 08:40:22.816425'),(37,'boards','0004_userprofile','2018-06-05 10:02:03.474053'),(38,'boards','0005_auto_20180605_1521','2018-06-05 12:21:27.002180');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6606hcmi8wda15z9twjalhx98gd3hafd','N2IxZGM1MjM1NWU3MjM2ZGJmNjA0NDBjMjAxNzIxY2Q5NDUxZDE0MTp7ImZhY2Vib29rX3N0YXRlIjoiYzY0bG1hbDdyOTBxZXNaWERoc3BQNkdmV21nRkw5b04ifQ==','2018-07-03 10:04:10.818673'),('y78yl2ycz1v06enqj52ll78v5jdtcrks','NjkwYzNiOGQ0NmYzMzRiYWEwMmIwMmQyNTI2OTFlODNjNWM0MTRmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNWE3NWZlYWFhZWQ0ZTdkOWJiMTg5ZTIwODQzNTM1NmE0ZDdiODkzIn0=','2018-06-26 08:08:35.154145');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'github','22600594','{\"auth_time\": 1529400760, \"id\": 22600594, \"expires\": null, \"login\": \"floedwin\", \"access_token\": \"293100665ad2c3257b22fb8ec1c9b0a58ab68ee9\", \"token_type\": \"bearer\"}',3),(2,'twitter','999991490096041984','{\"auth_time\": 1529401997, \"id\": 999991490096041984, \"access_token\": {\"oauth_token\": \"999991490096041984-LpDAf8aF0YySbJsU3GmzPuKpe1vnPPH\", \"oauth_token_secret\": \"Cu0Dsk9hCcuwFFzYeoqayUNBdZiNwhtPHIV0hHSpzDaM7\", \"user_id\": \"999991490096041984\", \"screen_name\": \"HannahFlorence9\"}}',4);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-19 13:38:50
