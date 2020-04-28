/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.3.15-MariaDB : Database - hospital
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hospital` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hospital`;

/*Table structure for table `accounts_accounts` */

DROP TABLE IF EXISTS `accounts_accounts`;

CREATE TABLE `accounts_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `birth` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_accounts_user_id_069ea42d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `accounts_accounts` */

insert  into `accounts_accounts`(`id`,`password`,`role`,`user_id`,`birth`,`email`,`first_name`,`last_name`,`username`) values 
(1,'123','1',1,'2019-11-20','test@test.com','','','test'),
(2,'xjc940424','2',3,'2019-11-03','asd@qq.com','','','q1234'),
(3,'11','1',4,'2012-07-12','11@126.com','','','11'),
(4,'xjc940424','1',5,'1999-02-03','xjc123@126.com','','','doctor1');

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add clinics',7,'add_clinics'),
(26,'Can change clinics',7,'change_clinics'),
(27,'Can delete clinics',7,'delete_clinics'),
(28,'Can view clinics',7,'view_clinics'),
(29,'Can add booking',8,'add_booking'),
(30,'Can change booking',8,'change_booking'),
(31,'Can delete booking',8,'delete_booking'),
(32,'Can view booking',8,'view_booking'),
(33,'Can add accounts',9,'add_accounts'),
(34,'Can change accounts',9,'change_accounts'),
(35,'Can delete accounts',9,'delete_accounts'),
(36,'Can view accounts',9,'view_accounts'),
(37,'Can add association',10,'add_association'),
(38,'Can change association',10,'change_association'),
(39,'Can delete association',10,'delete_association'),
(40,'Can view association',10,'view_association'),
(41,'Can add code',11,'add_code'),
(42,'Can change code',11,'change_code'),
(43,'Can delete code',11,'delete_code'),
(44,'Can view code',11,'view_code'),
(45,'Can add nonce',12,'add_nonce'),
(46,'Can change nonce',12,'change_nonce'),
(47,'Can delete nonce',12,'delete_nonce'),
(48,'Can view nonce',12,'view_nonce'),
(49,'Can add user social auth',13,'add_usersocialauth'),
(50,'Can change user social auth',13,'change_usersocialauth'),
(51,'Can delete user social auth',13,'delete_usersocialauth'),
(52,'Can view user social auth',13,'view_usersocialauth'),
(53,'Can add partial',14,'add_partial'),
(54,'Can change partial',14,'change_partial'),
(55,'Can delete partial',14,'delete_partial'),
(56,'Can view partial',14,'view_partial'),
(57,'Can add chat',15,'add_chat'),
(58,'Can change chat',15,'change_chat'),
(59,'Can delete chat',15,'delete_chat'),
(60,'Can view chat',15,'view_chat');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$150000$AyeENxA3ZHrZ$M8c7EKFn52pE+eKk9MMWTmL+b/d5po+ydgt+ED0TzwI=','2019-11-12 11:19:19.560535',0,'test','','','',0,1,'2019-11-12 11:12:01.514173'),
(2,'!adv1wQRcgyfx3p4UTT9P1AyxmATlfEkuFsa2sMf0','2019-11-12 11:19:26.285133',0,'JasonChou','Jason','Chou','jason98675@gmail.com',0,1,'2019-11-12 11:13:36.885453'),
(3,'pbkdf2_sha256$150000$8ezluKBfveGU$rGJFbvU8dte6JUJuFbCLVIL/a03oM6lQ5uZojNoj/qI=','2019-11-12 11:37:34.053720',0,'q1234','','','',0,1,'2019-11-12 11:37:33.936034'),
(4,'pbkdf2_sha256$150000$I6s96qkMyin7$3JoGfvPAK35YGd+fLfquVbd9SoUyQg5Q7TKSZTKOTvE=','2019-11-12 11:47:32.864577',0,'11','','','',0,1,'2019-11-12 11:47:32.754575'),
(5,'pbkdf2_sha256$150000$hrzainuYVibW$MS3gm+lNf3xyeTnZk8lT7JY90jmBldAJAtMr6smXOTw=','2019-11-13 11:30:42.349549',0,'doctor1','','','',0,1,'2019-11-13 11:30:42.176507');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `chat_chat` */

DROP TABLE IF EXISTS `chat_chat`;

CREATE TABLE `chat_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `chat_chat` */

insert  into `chat_chat`(`id`,`content`,`file`,`user_id`,`created_at`,`updated_at`) values 
(1,'Hello Jason','',2,'2019-11-12 11:20:18.295076','2019-11-12 11:20:18.295076'),
(2,'','aa.png',2,'2019-11-12 11:20:27.840543','2019-11-12 11:20:27.840543'),
(3,'as\r\n','',2,'2019-11-12 11:48:46.098656','2019-11-12 11:48:46.098656'),
(4,'','',2,'2019-11-12 11:48:58.749306','2019-11-12 11:48:58.749306'),
(5,'','',2,'2019-11-12 11:49:00.618788','2019-11-12 11:49:00.618788'),
(6,'aaa','Questionnaires-MR-US.pdf',2,'2019-11-12 11:49:06.583536','2019-11-12 11:49:06.583536'),
(7,'asd','',3,'2019-11-12 12:09:37.046922','2019-11-12 12:09:37.046922');

/*Table structure for table `clinics_booking` */

DROP TABLE IF EXISTS `clinics_booking`;

CREATE TABLE `clinics_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateTime` varchar(20) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `clinic_name` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `bookedfrom` int(11) NOT NULL,
  `clinic_link` varchar(100) NOT NULL,
  `notification_close` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `clinics_booking` */

insert  into `clinics_booking`(`id`,`lname`,`email`,`dateTime`,`clinic_id`,`fname`,`created_at`,`updated_at`,`birthday`,`phone`,`clinic_name`,`status`,`bookedfrom`,`clinic_link`,`notification_close`) values 
(1,'Chou','jason98675@gmail.com','11/12/2019 8:00 AM',4,'Jason','2019-11-12 11:17:32.547167','2019-11-12 11:17:32.547167','2019-11-12','0000','Yarrawonga','accepted',2,'Yarrawonga',1),
(2,'xc','asd@qq.com','11/12/2019 8:00 AM',5,'I ','2019-11-12 11:37:48.304217','2019-11-12 11:37:48.304217','2019-11-03','0000','Wangaratta (Nuclear Medicine)','rejected',3,'Wangaratta',0);

/*Table structure for table `clinics_clinics` */

DROP TABLE IF EXISTS `clinics_clinics`;

CREATE TABLE `clinics_clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `work_time` varchar(100) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `clinics_clinics` */

insert  into `clinics_clinics`(`id`,`name`,`slug`,`address`,`phone`,`work_time`,`longitude`,`latitude`,`image`) values 
(1,'Griffith Medical Specialist Centre','Griffith-Medical-Specialist-Centre','115-119 Binya Street, Griffith NSW 2680','02 6910 2100','Mon-Fri 8am-5pm',-34.28398,146.04194,''),
(2,'Wagga Wagga - Hardy Avenue','Wagga-Wagga-Hardy-Avenue','36 Hardy Avenue, Wagga Wagga NSW 2650','02 6932 1300','Mon-Fri 8am-5pm (late sessions for MRI) Sat 9am-1pm (excl long weekends)',-35.11928,147.35225,'images_1.jpg'),
(3,'Mildura Base Hospital','Mildura-Base-Hospital','Mildura Base Hospital, Ontario Avenue, Mildura VIC 3500','03 5000 1100','Mon-Fri 8am-5:30pm',-34.19998,142.12471,'images.jpg'),
(4,'Yarrawonga','Yarrawonga','33 Piper Street, Yarrawonga VIC 3730','03 5743 9200','Mon-Fri 9am-5pm',-36.0112,146.00683,'download_2.jpg'),
(5,'Wangaratta (Nuclear Medicine)','Wangaratta','Cusack Street, Wangaratta VIC 3677','03 5723 3100','Mon-Fri 9am-5pm',-36.355282,146.313644,'download_3.jpg');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(9,'accounts','accounts'),
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(15,'chat','chat'),
(8,'clinics','booking'),
(7,'clinics','clinics'),
(5,'contenttypes','contenttype'),
(6,'sessions','session'),
(10,'social_django','association'),
(11,'social_django','code'),
(12,'social_django','nonce'),
(14,'social_django','partial'),
(13,'social_django','usersocialauth');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2019-11-12 11:10:45.836274'),
(2,'auth','0001_initial','2019-11-12 11:10:45.918055'),
(3,'accounts','0001_initial','2019-11-12 11:10:46.200300'),
(4,'accounts','0002_auto_20191104_1104','2019-11-12 11:10:46.320977'),
(5,'accounts','0003_auto_20191105_1937','2019-11-12 11:10:46.339927'),
(6,'admin','0001_initial','2019-11-12 11:10:46.362866'),
(7,'admin','0002_logentry_remove_auto_add','2019-11-12 11:10:46.425697'),
(8,'admin','0003_logentry_add_action_flag_choices','2019-11-12 11:10:46.432678'),
(9,'contenttypes','0002_remove_content_type_name','2019-11-12 11:10:46.485537'),
(10,'auth','0002_alter_permission_name_max_length','2019-11-12 11:10:46.493516'),
(11,'auth','0003_alter_user_email_max_length','2019-11-12 11:10:46.506481'),
(12,'auth','0004_alter_user_username_opts','2019-11-12 11:10:46.513464'),
(13,'auth','0005_alter_user_last_login_null','2019-11-12 11:10:46.544380'),
(14,'auth','0006_require_contenttypes_0002','2019-11-12 11:10:46.546374'),
(15,'auth','0007_alter_validators_add_error_messages','2019-11-12 11:10:46.553356'),
(16,'auth','0008_alter_user_username_max_length','2019-11-12 11:10:46.565324'),
(17,'auth','0009_alter_user_last_name_max_length','2019-11-12 11:10:46.576294'),
(18,'auth','0010_alter_group_name_max_length','2019-11-12 11:10:46.587265'),
(19,'auth','0011_update_proxy_permissions','2019-11-12 11:10:46.594246'),
(20,'chat','0001_initial','2019-11-12 11:10:46.608209'),
(21,'chat','0002_auto_20191107_2258','2019-11-12 11:10:46.611201'),
(22,'chat','0003_auto_20191108_1053','2019-11-12 11:10:46.613196'),
(23,'chat','0004_auto_20191112_2210','2019-11-12 11:10:46.616188'),
(24,'clinics','0001_initial','2019-11-12 11:10:46.631148'),
(25,'clinics','0002_auto_20191029_0642','2019-11-12 11:10:46.650097'),
(26,'clinics','0003_booking','2019-11-12 11:10:46.666054'),
(27,'clinics','0004_auto_20191029_2043','2019-11-12 11:10:46.709938'),
(28,'clinics','0005_auto_20191029_2050','2019-11-12 11:10:46.744844'),
(29,'clinics','0006_auto_20191029_2124','2019-11-12 11:10:46.772769'),
(30,'clinics','0007_clinics_image','2019-11-12 11:10:46.796705'),
(31,'clinics','0008_auto_20191030_0717','2019-11-12 11:10:46.804684'),
(32,'clinics','0009_auto_20191030_1812','2019-11-12 11:10:46.832610'),
(33,'clinics','0010_booking_clinic_name','2019-11-12 11:10:46.844577'),
(34,'clinics','0011_booking_status','2019-11-12 11:10:46.857543'),
(35,'clinics','0012_booking_bookedfrom','2019-11-12 11:10:46.868513'),
(36,'clinics','0013_booking_notification','2019-11-12 11:10:46.880481'),
(37,'clinics','0014_booking_clinic_link','2019-11-12 11:10:46.891451'),
(38,'clinics','0015_auto_20191109_1855','2019-11-12 11:10:46.909405'),
(39,'clinics','0016_remove_booking_notificated','2019-11-12 11:10:46.933340'),
(40,'sessions','0001_initial','2019-11-12 11:10:46.945309'),
(41,'default','0001_initial','2019-11-12 11:10:47.063990'),
(42,'social_auth','0001_initial','2019-11-12 11:10:47.065985'),
(43,'default','0002_add_related_name','2019-11-12 11:10:47.147766'),
(44,'social_auth','0002_add_related_name','2019-11-12 11:10:47.149761'),
(45,'default','0003_alter_email_max_length','2019-11-12 11:10:47.157740'),
(46,'social_auth','0003_alter_email_max_length','2019-11-12 11:10:47.158737'),
(47,'default','0004_auto_20160423_0400','2019-11-12 11:10:47.165718'),
(48,'social_auth','0004_auto_20160423_0400','2019-11-12 11:10:47.167713'),
(49,'social_auth','0005_auto_20160727_2333','2019-11-12 11:10:47.180678'),
(50,'social_django','0006_partial','2019-11-12 11:10:47.195639'),
(51,'social_django','0007_code_timestamp','2019-11-12 11:10:47.216582'),
(52,'social_django','0008_partial_timestamp','2019-11-12 11:10:47.235531'),
(53,'social_django','0001_initial','2019-11-12 11:10:47.246502'),
(54,'social_django','0005_auto_20160727_2333','2019-11-12 11:10:47.248497'),
(55,'social_django','0004_auto_20160423_0400','2019-11-12 11:10:47.250491'),
(56,'social_django','0003_alter_email_max_length','2019-11-12 11:10:47.251488'),
(57,'social_django','0002_add_related_name','2019-11-12 11:10:47.253483');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('bb7jtrz6pvsrq54gdv14n83l3g9nuarg','ZGY4OWJmNTJhMTgyNzJjN2YxMTk3ODFkZGYyM2Q1YjJmMmI3ZWE1NTp7ImZhY2Vib29rX3N0YXRlIjoiN1poVG01eVZGQ1l0aWtKVWVlRWNuRlQ3Z0dPV3kybVkiLCJfYXV0aF91c2VyX2lkIjoiNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjdiYmFlZjJlYzFkZmJhOTFiYmNhYzc1MWUzMzYwZDg1ZTJkNzc2MCJ9','2019-11-27 11:30:42.359523'),
('lkaz9sd7o021eeezbfqytapmad78x4dg','MjM2YjhjODEwNjMwMjBjYTYzZmMwNDBlY2I1ZTBhYjI4NGYyZTc4Mzp7ImZhY2Vib29rX3N0YXRlIjoiWU1mMHFxeGRNV1ljVzBwWkJFbHJsT2RBVkZJdVZKeW0iLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDZjNWQ4MTEzYjFiYjM1ZTRjMTc3MjhkNmQyNjkzNDVkYTVjYTNhZSJ9','2019-11-26 11:19:19.564524'),
('tugt5cfxny9680r26bprhg3evwd95i5i','NjgzMWQyY2NlMDNmYzMzOTUyMGY1YjA3YmFiYmRkOTkxOGE5MWViNTp7ImZhY2Vib29rX3N0YXRlIjoiS2FKWnJIeXlOVDhFSno4MGtBZWp5QUR1VUpuYXE0OXciLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2E0ZWQzYTc5OWViYmM0NWViZTIzMWE1Y2NkOTM5ZTdjZDgwN2YyZiIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIn0=','2019-11-26 11:19:26.288125');

/*Table structure for table `social_auth_association` */

DROP TABLE IF EXISTS `social_auth_association`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_auth_association` */

/*Table structure for table `social_auth_code` */

DROP TABLE IF EXISTS `social_auth_code`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_auth_code` */

/*Table structure for table `social_auth_nonce` */

DROP TABLE IF EXISTS `social_auth_nonce`;

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_auth_nonce` */

/*Table structure for table `social_auth_partial` */

DROP TABLE IF EXISTS `social_auth_partial`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_auth_partial` */

/*Table structure for table `social_auth_usersocialauth` */

DROP TABLE IF EXISTS `social_auth_usersocialauth`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `social_auth_usersocialauth` */

insert  into `social_auth_usersocialauth`(`id`,`provider`,`uid`,`extra_data`,`user_id`) values 
(1,'facebook','103236364462483','{\"auth_time\": 1573557566, \"id\": \"103236364462483\", \"expires\": 5183650, \"granted_scopes\": [\"email\", \"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAAfIA0WRunYBAPwWv1ZAxeZAbOOnOFM4oDwiCZA5ZAlMZCc4Dlm0ZA1zBHCA7Dod1eLiPfSDg9selXbhgZAntdlfrT8h1OyMmENmSEFwe8aoeu11dJerVwMaCorZBMrI2FZCwg7fVSVEVq5PzfyGN1AngH7jUTJclSkA4RTp2dAIPFZAIyGsK2GYiVxBACqkmZCjboZD\", \"token_type\": null}',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
