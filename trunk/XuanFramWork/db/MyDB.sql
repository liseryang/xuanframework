/*
SQLyog Trial v8.3 
MySQL - 5.1.49-community : Database - mydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydb`;

/*Table structure for table `annual_investment_plan` */

DROP TABLE IF EXISTS `annual_investment_plan`;

CREATE TABLE `annual_investment_plan` (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plan_num` varchar(32) NOT NULL,
  `year_in_which` varchar(32) NOT NULL,
  `plan_status` varchar(32) NOT NULL,
  `plan_name` varchar(240) NOT NULL,
  `company_type` varchar(120) NOT NULL,
  `program_manager` varchar(32) NOT NULL,
  `create_date` date DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `plan_doc_num` varchar(32) DEFAULT NULL,
  `plan_start_date` date DEFAULT NULL,
  `plan_end_date` date DEFAULT NULL,
  `plan_file_patch` varchar(240) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `annual_investment_plan` */

LOCK TABLES `annual_investment_plan` WRITE;

insert  into `annual_investment_plan`(`plan_id`,`plan_num`,`year_in_which`,`plan_status`,`plan_name`,`company_type`,`program_manager`,`create_date`,`create_name`,`plan_doc_num`,`plan_start_date`,`plan_end_date`,`plan_file_patch`,`remarks`) values (1,'IP201009001','2010','草拟','2010计划填报LL','有限公司','程涛',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'IP201009002','2010','已审批','2010计划填报KK','有限公司','程涛',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'IP201009003','2010','编制中','2010计划填报','TD公司','杨积荣',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'分公司-1','2010','填报中','填报计划','有限公司','谢平','2010-11-01',NULL,NULL,NULL,NULL,NULL,NULL),(5,'分公司-2','2010','已审批','填报年度计划','有限公司','张伟','2010-11-01',NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `project_account` */

DROP TABLE IF EXISTS `project_account`;

CREATE TABLE `project_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_num` varchar(32) DEFAULT NULL,
  `project_name` varchar(128) DEFAULT NULL,
  `mis_num` varchar(32) DEFAULT NULL,
  `project_attr` varchar(32) DEFAULT NULL,
  `company_type` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `project_account` */

LOCK TABLES `project_account` WRITE;

insert  into `project_account`(`id`,`project_num`,`project_name`,`mis_num`,`project_attr`,`company_type`,`status`) values (1,'prj001','项目结算报告书--施工单位','mis001','省管市建','有限公司','施工单位已申请'),(2,'prj002','项目结算报告书--建设单位','mis002','省管市建','TD公司','建设单位同意'),(3,'prj003','项目结算报告书--选择审计单位','mis003','省管市建','有限公司','制作审计报告'),(4,'prj004','项目结算报告书--提交审计报告','mis004','省管市建','有限公司','已经提交审计'),(5,'prj005','项目结算报告书--会签','mis005','省管市建','TD公司','已完成结算');

UNLOCK TABLES;

/*Table structure for table `project_audit` */

DROP TABLE IF EXISTS `project_audit`;

CREATE TABLE `project_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_num` varchar(32) DEFAULT NULL,
  `project_name` varchar(128) DEFAULT NULL,
  `mis_num` varchar(32) DEFAULT NULL,
  `project_attr` varchar(32) DEFAULT NULL,
  `company_type` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `project_audit` */

LOCK TABLES `project_audit` WRITE;

insert  into `project_audit`(`id`,`project_num`,`project_name`,`mis_num`,`project_attr`,`company_type`,`status`) values (1,'prj001','龙岩市XXXX项目','mis001','省管市建','有限公司','未审计'),(2,'prj002','龙岩市XXXX项目','mis002','省管市建','TD公司','审计中'),(3,'prj003','省本部项目XXXX','mis003','省管省建','有限公司','审计中'),(4,'prj004','厦门市网络XXXX项目','mis004','省管市建','有限公司','已审计'),(5,'prj005','南平市传输网XXXX项目','mis005','省管市建','TD公司','已审计');

UNLOCK TABLES;

/*Table structure for table `query_info` */

DROP TABLE IF EXISTS `query_info`;

CREATE TABLE `query_info` (
  `query_id` varchar(32) NOT NULL,
  `q_select` varchar(2000) NOT NULL,
  `q_idfield` varchar(200) NOT NULL,
  `q_where` varchar(2000) DEFAULT NULL,
  `q_group` varchar(1000) DEFAULT NULL,
  `q_order` varchar(1000) DEFAULT NULL,
  `q_desc` varchar(1000) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `query_info` */

LOCK TABLES `query_info` WRITE;

insert  into `query_info`(`query_id`,`q_select`,`q_idfield`,`q_where`,`q_group`,`q_order`,`q_desc`) values ('test_q','from AnnualInvestmentPlan','planId',NULL,NULL,NULL,'年度计划简单查询');

UNLOCK TABLES;

/*Table structure for table `rolling_plan` */

DROP TABLE IF EXISTS `rolling_plan`;

CREATE TABLE `rolling_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(400) NOT NULL,
  `extension_name` varchar(16) NOT NULL,
  `upload_user` varchar(64) NOT NULL,
  `upload_date` date DEFAULT NULL,
  `file_notes` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `rolling_plan` */

LOCK TABLES `rolling_plan` WRITE;

insert  into `rolling_plan`(`id`,`file_name`,`extension_name`,`upload_user`,`upload_date`,`file_notes`) values (1,'滚动规划.xls','xls','张伟','2010-11-23','测试一下'),(2,'滚动规划2.xls','xls','谢平','2010-11-24',NULL);

UNLOCK TABLES;

/*Table structure for table `task_info` */

DROP TABLE IF EXISTS `task_info`;

CREATE TABLE `task_info` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `task_type` varchar(128) DEFAULT NULL,
  `topics` varchar(128) DEFAULT NULL,
  `workflow` varchar(128) DEFAULT NULL,
  `task_status` int(1) DEFAULT NULL,
  `creater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `task_info` */

LOCK TABLES `task_info` WRITE;

insert  into `task_info`(`task_id`,`create_date`,`task_type`,`topics`,`workflow`,`task_status`,`creater`) values (1,'2010-11-16','计划编制(固定格式)','2011年投资计划编制','部门或分公司负责人',0,'赵亮'),(2,'2010-11-16','填报月度投资报告（动态）','2010年11月月度投资报告','填报月度项目投资报告',0,'王伟'),(3,'2010-11-16','审批报告（动态）','2010年11月月度投资报告','汇总月度项目投资报告',0,'谢平');

UNLOCK TABLES;

/*Table structure for table `template` */

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_num` varchar(64) NOT NULL,
  `template_name` varchar(200) NOT NULL,
  `template_type` varchar(64) NOT NULL COMMENT '动态行，固定行',
  `company_type` varchar(64) DEFAULT NULL COMMENT '公司类型',
  `professional_type` varchar(64) DEFAULT NULL COMMENT '专业类型',
  `enabled` varchar(1) NOT NULL COMMENT '0禁用，1启用',
  `create_date` date DEFAULT NULL,
  `create_user` varchar(64) DEFAULT NULL,
  `template_file_name` varchar(200) DEFAULT NULL,
  `template_file_path` varchar(400) DEFAULT NULL COMMENT '模板文件路径',
  `notes` varchar(400) DEFAULT NULL COMMENT '备注',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `template` */

LOCK TABLES `template` WRITE;

insert  into `template`(`id`,`template_num`,`template_name`,`template_type`,`company_type`,`professional_type`,`enabled`,`create_date`,`create_user`,`template_file_name`,`template_file_path`,`notes`,`start_date`,`end_date`) values (1,'20101124001','测试模板-数据业务网','动态行','有限公司','数据业务网','0','2010-11-24','张伟','模板1.xls',NULL,NULL,'2010-11-24',NULL),(2,'20101124002','测试模板-IT建设','固定行','TD公司','IT建设','1','2010-11-24','谢平','模板2.xls',NULL,NULL,'2010-11-24',NULL);

UNLOCK TABLES;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` double NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `pwd` varchar(128) NOT NULL,
  `disabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`id`,`username`,`pwd`,`disabled`) values (1,'用户_0','密码_0',NULL),(2,'用户_1','密码_1',NULL),(3,'用户_2','密码_2',NULL),(4,'用户_3','密码_3',NULL),(5,'用户_4','密码_4',NULL),(6,'用户_5','密码_5',NULL),(7,'用户_6','密码_6',NULL),(8,'用户_7','密码_7',NULL),(9,'用户_8','密码_8',NULL),(10,'用户_9','密码_9',NULL),(11,'用户_10','密码_10',NULL),(12,'用户_11','密码_11',NULL),(13,'用户_12','密码_12',NULL),(14,'用户_13','密码_13',NULL),(15,'用户_14','密码_14',NULL),(16,'用户_15','密码_15',NULL),(17,'用户_16','密码_16',NULL),(18,'用户_17','密码_17',NULL),(19,'用户_18','密码_18',NULL),(20,'用户_19','密码_19',NULL),(21,'用户_20','密码_20',NULL),(22,'用户_21','密码_21',NULL),(23,'用户_22','密码_22',NULL),(24,'用户_23','密码_23',NULL),(25,'用户_24','密码_24',NULL),(26,'用户_25','密码_25',NULL),(27,'用户_26','密码_26',NULL),(28,'用户_27','密码_27',NULL),(29,'用户_28','密码_28',NULL),(30,'用户_29','密码_29',NULL),(31,'用户_30','密码_30',NULL),(32,'用户_31','密码_31',NULL),(33,'用户_32','密码_32',NULL),(34,'用户_33','密码_33',NULL),(35,'用户_34','密码_34',NULL),(36,'用户_35','密码_35',NULL),(37,'用户_36','密码_36',NULL),(38,'用户_37','密码_37',NULL),(39,'用户_38','密码_38',NULL),(40,'用户_39','密码_39',NULL),(41,'用户_40','密码_40',NULL),(42,'用户_41','密码_41',NULL),(43,'用户_42','密码_42',NULL),(44,'用户_43','密码_43',NULL),(45,'用户_44','密码_44',NULL),(46,'用户_45','密码_45',NULL),(47,'用户_46','密码_46',NULL),(48,'用户_47','密码_47',NULL),(49,'用户_48','密码_48',NULL),(50,'用户_49','密码_49',NULL),(51,'用户_50','密码_50',NULL),(52,'用户_51','密码_51',NULL),(53,'用户_52','密码_52',NULL),(54,'用户_53','密码_53',NULL),(55,'用户_54','密码_54',NULL),(56,'用户_55','密码_55',NULL),(57,'用户_56','密码_56',NULL),(58,'用户_57','密码_57',NULL),(59,'用户_58','密码_58',NULL),(60,'用户_59','密码_59',NULL),(61,'用户_60','密码_60',NULL),(62,'用户_61','密码_61',NULL),(63,'用户_62','密码_62',NULL),(64,'用户_63','密码_63',NULL),(65,'用户_64','密码_64',NULL),(66,'用户_65','密码_65',NULL),(67,'用户_66','密码_66',NULL),(68,'用户_67','密码_67',NULL),(69,'用户_68','密码_68',NULL),(70,'用户_69','密码_69',NULL),(71,'用户_70','密码_70',NULL),(72,'用户_71','密码_71',NULL),(73,'用户_72','密码_72',NULL),(74,'用户_73','密码_73',NULL),(75,'用户_74','密码_74',NULL),(76,'用户_75','密码_75',NULL),(77,'用户_76','密码_76',NULL),(78,'用户_77','密码_77',NULL),(79,'用户_78','密码_78',NULL),(80,'用户_79','密码_79',NULL),(81,'用户_80','密码_80',NULL),(82,'用户_81','密码_81',NULL),(83,'用户_82','密码_82',NULL),(84,'用户_83','密码_83',NULL),(85,'用户_84','密码_84',NULL),(86,'用户_85','密码_85',NULL),(87,'用户_86','密码_86',NULL),(88,'用户_87','密码_87',NULL),(89,'用户_88','密码_88',NULL),(90,'用户_89','密码_89',NULL),(91,'用户_90','密码_90',NULL),(92,'用户_91','密码_91',NULL),(93,'用户_92','密码_92',NULL),(94,'用户_93','密码_93',NULL),(95,'用户_94','密码_94',NULL),(96,'用户_95','密码_95',NULL),(97,'用户_96','密码_96',NULL),(98,'用户_97','密码_97',NULL),(99,'用户_98','密码_98',NULL),(100,'用户_99','密码_99',NULL),(101,'用户_100','密码_100',NULL),(102,'用户_101','密码_101',NULL),(103,'用户_102','密码_102',NULL),(104,'用户_103','密码_103',NULL),(105,'用户_104','密码_104',NULL),(106,'用户_105','密码_105',NULL),(107,'用户_106','密码_106',NULL),(108,'用户_107','密码_107',NULL),(109,'用户_108','密码_108',NULL),(110,'用户_109','密码_109',NULL),(111,'用户_110','密码_110',NULL),(112,'用户_111','密码_111',NULL),(113,'用户_112','密码_112',NULL),(114,'用户_113','密码_113',NULL),(115,'用户_114','密码_114',NULL),(116,'用户_115','密码_115',NULL),(117,'用户_116','密码_116',NULL),(118,'用户_117','密码_117',NULL),(119,'用户_118','密码_118',NULL),(120,'用户_119','密码_119',NULL),(121,'用户_120','密码_120',NULL),(122,'用户_121','密码_121',NULL),(123,'用户_122','密码_122',NULL),(124,'用户_123','密码_123',NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
