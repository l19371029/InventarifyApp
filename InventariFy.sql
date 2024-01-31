-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: inventarifyapp
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user profile',7,'add_userprofile'),(26,'Can change user profile',7,'change_userprofile'),(27,'Can delete user profile',7,'delete_userprofile'),(28,'Can view user profile',7,'view_userprofile'),(29,'Can add item',8,'add_item'),(30,'Can change item',8,'change_item'),(31,'Can delete item',8,'delete_item'),(32,'Can view item',8,'view_item'),(33,'Can add inventarify',9,'add_inventarify'),(34,'Can change inventarify',9,'change_inventarify'),(35,'Can delete inventarify',9,'delete_inventarify'),(36,'Can view inventarify',9,'view_inventarify'),(37,'Can add items',10,'add_items'),(38,'Can change items',10,'change_items'),(39,'Can delete items',10,'delete_items'),(40,'Can view items',10,'view_items'),(41,'Can add item business',11,'add_itembusiness'),(42,'Can change item business',11,'change_itembusiness'),(43,'Can delete item business',11,'delete_itembusiness'),(44,'Can view item business',11,'view_itembusiness'),(45,'Can add modelo',12,'add_modelo'),(46,'Can change modelo',12,'change_modelo'),(47,'Can delete modelo',12,'delete_modelo'),(48,'Can view modelo',12,'view_modelo'),(49,'Can add planta',13,'add_planta'),(50,'Can change planta',13,'change_planta'),(51,'Can delete planta',13,'delete_planta'),(52,'Can view planta',13,'view_planta'),(53,'Can add sistema',14,'add_sistema'),(54,'Can change sistema',14,'change_sistema'),(55,'Can delete sistema',14,'delete_sistema'),(56,'Can view sistema',14,'view_sistema');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$AuJMQshIZNd2vmYK9EdBS8$VC8v4e8PJvVl0yxsrDtXYYSfUy1DmNkrqmrVdAtQSXY=','2024-01-30 20:27:45.779136',1,'admin','','','admin@gmail.com',1,1,'2023-12-20 03:01:09.349996'),(2,'pbkdf2_sha256$720000$nRYHSDfOMFP31YcDv1ZtGN$t1csRvj4I7wrEszHIsCx56V7X/TNPo9Qccp+0isC6R8=','2024-01-15 19:35:50.603173',0,'chris','','','',0,1,'2023-12-22 17:58:22.000000'),(8,'pbkdf2_sha256$720000$KYA0gotdJlYnXM1Y2ChoKE$8gE3Y/81wq/OAiVSdzLj8Y5U8AP59GP0Gvm2HSVbxSg=','2024-01-25 18:06:52.986622',0,'RoyR','','','',0,1,'2024-01-25 18:06:18.988510');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (2,2,5),(1,2,9);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-22 17:58:23.285158','2','chris',1,'[{\"added\": {}}]',4,1),(2,'2023-12-22 17:59:04.542710','2','chris',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(3,'2024-01-03 04:16:40.490710','1','1, e, ejemplo, e, e, e, e, 1, 1, 1, 3',1,'[{\"added\": {}}]',10,1),(4,'2024-01-05 19:09:23.349959','19','1, e, e, e, e, e, e, C:1, I:1, D:1, Valor:3, Clasificación:good',1,'[{\"added\": {}}]',10,1),(5,'2024-01-07 21:33:46.527252','1','1212, 1, 2024-01-07, 2024-01-08, images/forma-correcta-cuello-tortuga.jpg',1,'[{\"added\": {}}]',11,1),(6,'2024-01-08 00:51:19.338124','1','1212, 1, 2024-01-07, 2024-01-08, images/forma-correcta-cuello-tortuga.jpg',3,'',11,1),(7,'2024-01-09 19:08:46.400219','26','44.00, Celulares, hi, Dirección, hi, Lógico, hi, C:2.00, I:2.00, D:2.00, Valor:6.00, Clasificación:Crítico',3,'',10,1),(8,'2024-01-09 19:08:46.455548','23','14.00, Base de datos, w, EHS - Medio Ambiente, Salud y Seguridad, w, Lógico, w, C:2.00, I:2.00, D:2.00, Valor:6.00, Clasificación:Crítico',3,'',10,1),(9,'2024-01-09 19:08:46.465562','22','15.00, Accesoklandls, kansdnkl, Ingeniería<, dksf, Lógico, ds, C:1.00, I:1.00, D:1.00, Valor:3.00, Clasificación:No crítico',3,'',10,1),(10,'2024-01-15 16:25:16.679139','3','User1',1,'[{\"added\": {}}]',4,1),(11,'2024-01-15 17:13:19.389632','4','User2',1,'[{\"added\": {}}]',4,1),(12,'2024-01-15 17:13:29.503557','4','User2',2,'[]',4,1),(13,'2024-01-15 17:26:06.677257','5','User3',1,'[{\"added\": {}}]',4,1),(14,'2024-01-15 17:26:11.268293','5','User3',2,'[]',4,1),(15,'2024-01-15 21:20:03.557788','4','User2',3,'',4,1),(16,'2024-01-15 21:20:03.565815','5','User3',3,'',4,1),(17,'2024-01-15 21:20:22.482709','6','User',1,'[{\"added\": {}}]',4,1),(18,'2024-01-15 21:20:26.970137','6','User',2,'[]',4,1),(19,'2024-01-16 02:22:10.068464','8','123456, 1, 2024-01-16, 2024-01-17, ',3,'',11,1),(20,'2024-01-16 02:22:10.092446','7','12, 12, 2024-01-03, 2024-01-26, images/Asuska1.jpg',3,'',11,1),(21,'2024-01-16 02:22:10.100440','6','333333, 3, 2024-01-18, 2024-02-01, images/Asuska2.png',3,'',11,1),(22,'2024-01-16 02:22:10.100440','5','70, 21, 2024-01-09, 2024-01-11, images/1679251.jpg',3,'',11,1),(23,'2024-01-16 02:22:10.108434','4','2, 2, 2024-01-08, 2024-01-09, images/34dbfadef15bf5c6329de9b90cf4a1.jpg',3,'',11,1),(24,'2024-01-16 02:22:10.118486','3','47, 5, 2024-01-09, 2024-01-10, images/EP-12_2-1451x2048_0hnTDrf.jpg',3,'',11,1),(25,'2024-01-16 02:22:10.118486','2','152, 111, 2023-11-12, 2023-11-12, images/EP-12_2-1451x2048.jpg',3,'',11,1),(26,'2024-01-16 02:31:20.319882','10','12, 2, 2024-01-16, 2024-01-18, images/Asuska2_gRVPfwD.png',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',11,1),(27,'2024-01-25 18:03:34.646264','7','Ilse_Garduño',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'inventary','inventarify'),(8,'inventary','item'),(11,'inventary','itembusiness'),(10,'inventary','items'),(12,'inventary','modelo'),(13,'inventary','planta'),(14,'inventary','sistema'),(6,'sessions','session'),(7,'users','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-20 02:59:29.886762'),(2,'auth','0001_initial','2023-12-20 02:59:30.994868'),(3,'admin','0001_initial','2023-12-20 02:59:31.231532'),(4,'admin','0002_logentry_remove_auto_add','2023-12-20 02:59:31.247153'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-20 02:59:31.264738'),(6,'contenttypes','0002_remove_content_type_name','2023-12-20 02:59:31.491930'),(7,'auth','0002_alter_permission_name_max_length','2023-12-20 02:59:31.604982'),(8,'auth','0003_alter_user_email_max_length','2023-12-20 02:59:31.722279'),(9,'auth','0004_alter_user_username_opts','2023-12-20 02:59:31.740542'),(10,'auth','0005_alter_user_last_login_null','2023-12-20 02:59:31.926193'),(11,'auth','0006_require_contenttypes_0002','2023-12-20 02:59:31.926193'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-20 02:59:31.941815'),(13,'auth','0008_alter_user_username_max_length','2023-12-20 02:59:32.134276'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-20 02:59:32.246964'),(15,'auth','0010_alter_group_name_max_length','2023-12-20 02:59:32.281931'),(16,'auth','0011_update_proxy_permissions','2023-12-20 02:59:32.297930'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-20 02:59:32.413207'),(18,'sessions','0001_initial','2023-12-20 02:59:32.504971'),(19,'users','0001_initial','2023-12-21 19:25:33.232739'),(20,'inventary','0001_initial','2023-12-22 04:03:34.214363'),(21,'inventary','0002_alter_item_descripcion_activo','2023-12-22 04:20:20.804534'),(22,'users','0002_userprofile_password','2023-12-22 17:36:56.527440'),(23,'users','0003_alter_userprofile_estatus','2023-12-22 18:38:48.751749'),(24,'inventary','0003_inventarify','2023-12-22 19:24:05.759561'),(25,'inventary','0004_item_option1_item_option2','2023-12-22 21:52:28.289390'),(26,'inventary','0005_remove_item_option1_remove_item_option2_and_more','2023-12-26 22:37:17.805971'),(27,'inventary','0006_item_clasificacion','2023-12-26 23:03:26.697141'),(28,'inventary','0007_item_no','2024-01-02 21:09:09.346658'),(29,'inventary','0008_alter_item_no','2024-01-02 21:09:09.396835'),(30,'inventary','0009_alter_item_no','2024-01-02 21:09:09.404780'),(31,'inventary','0010_remove_item_no','2024-01-02 21:09:09.411017'),(32,'inventary','0011_item_fecha_creacion','2024-01-02 21:09:09.422937'),(33,'inventary','0012_item_no','2024-01-02 21:09:09.430883'),(34,'inventary','0013_remove_item_no_item_numero','2024-01-02 21:09:09.437836'),(35,'inventary','0014_alter_item_numero','2024-01-02 21:09:09.450751'),(36,'inventary','0015_remove_item_fecha_creacion','2024-01-03 02:31:52.334582'),(37,'inventary','0016_alter_item_numero','2024-01-03 03:46:42.633614'),(38,'inventary','0017_remove_item_numero','2024-01-03 03:50:43.953970'),(39,'inventary','0018_items','2024-01-03 03:56:36.572524'),(40,'inventary','0019_item_numero_alter_item_descripcion_activo','2024-01-03 16:38:35.078803'),(41,'inventary','0020_alter_item_descripcion_activo_and_more','2024-01-03 16:38:35.158650'),(42,'inventary','0021_alter_items_descripcion_activo_and_more','2024-01-03 16:40:27.491310'),(43,'inventary','0022_alter_items_clasificacion_alter_items_responsable','2024-01-04 02:53:12.476087'),(44,'inventary','0023_itembusiness','2024-01-07 21:03:38.460811'),(45,'inventary','0024_alter_itembusiness_version','2024-01-07 21:04:16.531381'),(46,'inventary','0025_alter_itembusiness_version','2024-01-07 21:55:28.194900'),(47,'inventary','0026_remove_inventarify_cid_remove_inventarify_criticidad_and_more','2024-01-09 02:37:56.184107'),(48,'inventary','0027_alter_inventarify_clave_codigo_and_more','2024-01-09 18:22:33.515845'),(49,'inventary','0028_modelo_planta_sistema_delete_inventarify','2024-01-09 18:40:21.655543'),(50,'inventary','0029_alter_items_c_alter_items_d_alter_items_i_and_more','2024-01-24 17:47:28.233475');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7sas0xinzbr4ra8qrl46w0v7pj34775u','.eJxVjDsOwjAQBe_iGllZfxNKes5grXc3OIAcKU4qxN0hUgpo38y8l0q4rSVtTZY0sTorUKffLSM9pO6A71hvs6a5rsuU9a7ogzZ9nVmel8P9OyjYyremANkhSRcMEDiLwfaDszx6imSMRcqBCCgC9MQD-gDRsO-cgBHxo3p_AOIkN-Y:1rMwHk:nPyWZ8S1GL6bp10Lda9DMkviuOG-3hsZq3CgwKVJKXU','2024-01-22 20:31:48.274992'),('n2zalykcriw27gihpu0ev45ie70819hl','.eJxVjEEOwiAQRe_C2hAEpk5duvcMZBgGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhSuqsBnX43SLxQ-oG0p3qrWludZmnqDdF77Tra0vyvOzu30GhXr619SaZAcEzIBOgTyQ-ZbQUDWLG0QGDtQYijz6fRnZ8lEjiyDkQHtT7A9vwOAk:1rRzeO:x_QNxjqT5HZ9I0Im_HZSeoXcaUZ-r-M9fatfaUBhLCc','2024-02-05 19:08:04.228899');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventary_itembusiness`
--

DROP TABLE IF EXISTS `inventary_itembusiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventary_itembusiness` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `fecha_revision` date NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventary_itembusiness`
--

LOCK TABLES `inventary_itembusiness` WRITE;
/*!40000 ALTER TABLE `inventary_itembusiness` DISABLE KEYS */;
INSERT INTO `inventary_itembusiness` VALUES (9,'123','1','2024-01-17','2024-01-18',''),(10,'12','2','2024-01-16','2024-01-18','images/Asuska2_gRVPfwD.png'),(11,'147','3','2024-01-26','2024-02-01','images/1679251_bqiNpED.jpg'),(12,'262626','1','2024-01-16','2024-01-17','images/DAI-logo.png');
/*!40000 ALTER TABLE `inventary_itembusiness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventary_items`
--

DROP TABLE IF EXISTS `inventary_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventary_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `nombre_activo` varchar(20) NOT NULL,
  `descripcion_activo` varchar(20) NOT NULL,
  `area` varchar(100) NOT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `tipo_activo` varchar(20) NOT NULL,
  `c` int NOT NULL,
  `i` int NOT NULL,
  `d` int NOT NULL,
  `valor` int NOT NULL,
  `clasificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventary_items`
--

LOCK TABLES `inventary_items` WRITE;
/*!40000 ALTER TABLE `inventary_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventary_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventary_modelo`
--

DROP TABLE IF EXISTS `inventary_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventary_modelo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modelo_activo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventary_modelo`
--

LOCK TABLES `inventary_modelo` WRITE;
/*!40000 ALTER TABLE `inventary_modelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventary_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventary_planta`
--

DROP TABLE IF EXISTS `inventary_planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventary_planta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lugar_planta` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventary_planta`
--

LOCK TABLES `inventary_planta` WRITE;
/*!40000 ALTER TABLE `inventary_planta` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventary_planta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventary_sistema`
--

DROP TABLE IF EXISTS `inventary_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventary_sistema` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sistema_software` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventary_sistema`
--

LOCK TABLES `inventary_sistema` WRITE;
/*!40000 ALTER TABLE `inventary_sistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventary_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `proceso` varchar(100) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_userprofile_user_id_87251ef1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'Testing','Lider','activo',1,'default_password');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31 13:44:49
