/*
SQLyog Enterprise - MySQL GUI v5.25
Host - 5.5.41-log : Database - unorganised
*********************************************************************
Server version : 5.5.41-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `unorganised`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `banks` */

CREATE TABLE `banks` (
  `bank_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `banks` */

insert  into `banks`(`bank_id`,`bank_name`) values (1,'Axis Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (2,'Bandhan Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (3,'Catholic Syrian Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (4,'City Union Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (5,'Development Credit Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (6,'Dhanlaxmi Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (7,'Federal Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (8,'HDFC Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (9,'ICICI Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (10,'IDFC Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (11,'IndusInd Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (12,'Kotak Mahindra Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (13,'Jammu and Kashmir Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (14,'Karnataka Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (15,'Karur Vysya Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (16,'Kotak Mahindra Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (17,'Lakshmi Vilas Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (18,'Nainital Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (19,'Chartered Mercantile M.Bank Ltd');
insert  into `banks`(`bank_id`,`bank_name`) values (20,'South Indian Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (21,'Tamilnad Mercantile Bank');
insert  into `banks`(`bank_id`,`bank_name`) values (22,'Yes Bank');

/*Table structure for table `defaults` */

CREATE TABLE `defaults` (
  `job_search_radius` int(11) DEFAULT NULL,
  `job_search_result_limit` int(11) DEFAULT NULL,
  `template_sms_otp` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `defaults` */

insert  into `defaults`(`job_search_radius`,`job_search_result_limit`,`template_sms_otp`) values (20,15,'You got OTP with %OTP%.');

/*Table structure for table `job` */

CREATE TABLE `job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `scheduled_on` datetime DEFAULT NULL,
  `completed_user_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `sub_service_id` bigint(20) DEFAULT NULL,
  `bidding_amont` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `latlong` (`latitude`,`longitude`),
  KEY `longlat` (`longitude`,`latitude`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 CHECKSUM=1;

/*Table structure for table `job_images` */

CREATE TABLE `job_images` (
  `job_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `image_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job_images` */

/*Table structure for table `operator` */

CREATE TABLE `operator` (
  `operator_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`operator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `service` */

CREATE TABLE `service` (
  `service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `service` */

insert  into `service`(`service_id`,`description`) values (1,'Health and Fitness');
insert  into `service`(`service_id`,`description`) values (2,'Repair and Maintenance');
insert  into `service`(`service_id`,`description`) values (3,'Beauty and Makeup');
insert  into `service`(`service_id`,`description`) values (4,'Wedding');
insert  into `service`(`service_id`,`description`) values (5,'Hobbies and Interests');
insert  into `service`(`service_id`,`description`) values (6,'Home Care and Design');
insert  into `service`(`service_id`,`description`) values (7,'House Party');
insert  into `service`(`service_id`,`description`) values (8,'Event Planning');
insert  into `service`(`service_id`,`description`) values (9,'Photographer');
insert  into `service`(`service_id`,`description`) values (10,'Daily Needs');

/*Table structure for table `sub_service` */

CREATE TABLE `sub_service` (
  `sub_service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sub_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `sub_service` */

insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (1,1,'Birthday Party Caterers');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (2,1,'Birthday Party Planner');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (3,1,'Corporate Event Photographer');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (4,1,'Corporate Event Planner');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (5,1,'Corporate Party Caterers');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (6,2,'Personal Party Photographer');
insert  into `sub_service`(`sub_service_id`,`service_id`,`description`) values (7,2,'Valet Parking');

/*Table structure for table `user` */

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `otp_code` varchar(25) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `bank_account_number` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `isfc_code` varchar(50) DEFAULT NULL,
  `user_photo_url` varchar(1000) DEFAULT NULL,
  `photo_id_proof_type` int(11) DEFAULT NULL,
  `photo_id_proof_url` varchar(1000) DEFAULT NULL,
  `cancellation_cheque_leaf_url` varchar(1000) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `aadhaar_number` double DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `last_login_on` timestamp NULL DEFAULT NULL,
  `registration_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `user_service` */

CREATE TABLE `user_service` (
  `user_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `sub_service_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`service_id`,`sub_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_service` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
