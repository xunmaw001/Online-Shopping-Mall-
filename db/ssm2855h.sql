-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2855h
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377458714 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-04-02 15:14:14',1,1,'提问1','回复1',1),(102,'2021-04-02 15:14:14',2,2,'提问2','回复2',2),(103,'2021-04-02 15:14:14',3,3,'提问3','回复3',3),(104,'2021-04-02 15:14:14',4,4,'提问4','回复4',4),(105,'2021-04-02 15:14:14',5,5,'提问5','回复5',5),(106,'2021-04-02 15:14:14',6,6,'提问6','回复6',6),(1617377070019,'2021-04-02 15:24:29',11,NULL,'1111',NULL,0),(1617377458713,'2021-04-02 15:30:58',11,1,NULL,'33333',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm2855h/upload/1617377469873.jpg'),(2,'picture2','http://localhost:8080/ssm2855h/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2855h/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617376949582 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (71,'2021-04-02 15:14:14','账号1','姓名1','订单编号1','商品名称1','价格1',1,'总计1','未支付'),(72,'2021-04-02 15:14:14','账号2','姓名2','订单编号2','商品名称2','价格2',2,'总计2','未支付'),(73,'2021-04-02 15:14:14','账号3','姓名3','订单编号3','商品名称3','价格3',3,'总计3','未支付'),(74,'2021-04-02 15:14:14','账号4','姓名4','订单编号4','商品名称4','价格4',4,'总计4','未支付'),(75,'2021-04-02 15:14:14','账号5','姓名5','订单编号5','商品名称5','价格5',5,'总计5','未支付'),(76,'2021-04-02 15:14:14','账号6','姓名6','订单编号6','商品名称6','价格6',6,'总计6','未支付'),(1617376949581,'2021-04-02 15:22:28','用户1','姓名1','20214223221728108600','商品名称1','1',1,'1','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617376928765 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (141,'2021-04-02 15:14:14',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-02 15:14:14',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-02 15:14:14',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-02 15:14:14',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-02 15:14:14',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-02 15:14:14',6,6,'用户名6','评论内容6','回复内容6'),(1617376928764,'2021-04-02 15:22:07',31,11,'用户1','111',NULL);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinwenxinxi`
--

DROP TABLE IF EXISTS `discussxinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617376985272 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinwenxinxi`
--

LOCK TABLES `discussxinwenxinxi` WRITE;
/*!40000 ALTER TABLE `discussxinwenxinxi` DISABLE KEYS */;
INSERT INTO `discussxinwenxinxi` VALUES (151,'2021-04-02 15:14:14',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-02 15:14:14',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-02 15:14:14',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-02 15:14:14',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-02 15:14:14',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-02 15:14:14',6,6,'用户名6','评论内容6','回复内容6'),(1617376985271,'2021-04-02 15:23:04',91,11,'用户1','111',NULL);
/*!40000 ALTER TABLE `discussxinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377041288 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (111,'2021-04-02 15:14:14','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(112,'2021-04-02 15:14:14','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(113,'2021-04-02 15:14:14','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(114,'2021-04-02 15:14:14','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(115,'2021-04-02 15:14:14','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(116,'2021-04-02 15:14:14','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617377028496,'2021-04-02 15:23:48','111','<p>请输入内容111111</p>\n<p><img src=\"../../..//upload/1617377082079.blob\" /></p>',0,11,'用户1','开放'),(1617377041287,'2021-04-02 15:24:01',NULL,'111',1617377028496,11,'用户1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guanyuwomen`
--

DROP TABLE IF EXISTS `guanyuwomen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guanyuwomen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377272499 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guanyuwomen`
--

LOCK TABLES `guanyuwomen` WRITE;
/*!40000 ALTER TABLE `guanyuwomen` DISABLE KEYS */;
INSERT INTO `guanyuwomen` VALUES (21,'2021-04-02 15:14:13','标题1','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian1.jpg','内容1'),(22,'2021-04-02 15:14:13','标题2','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian2.jpg','内容2'),(23,'2021-04-02 15:14:13','标题3','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian3.jpg','内容3'),(24,'2021-04-02 15:14:13','标题4','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian4.jpg','内容4'),(25,'2021-04-02 15:14:13','标题5','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian5.jpg','内容5'),(26,'2021-04-02 15:14:13','标题6','http://localhost:8080/ssm2855h/upload/guanyuwomen_fengmian6.jpg','内容6'),(1617377272498,'2021-04-02 15:27:51','企业信息','http://localhost:8080/ssm2855h/upload/1617377259063.jpg','<p>111</p><p>111</p><p><img src=\"http://localhost:8080/ssm2855h/upload/1617377266027.jpg\"></p>');
/*!40000 ALTER TABLE `guanyuwomen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jubaotousu`
--

DROP TABLE IF EXISTS `jubaotousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jubaotousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousuriqi` datetime DEFAULT NULL COMMENT '投诉日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377134522 DEFAULT CHARSET=utf8 COMMENT='举报投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jubaotousu`
--

LOCK TABLES `jubaotousu` WRITE;
/*!40000 ALTER TABLE `jubaotousu` DISABLE KEYS */;
INSERT INTO `jubaotousu` VALUES (61,'2021-04-02 15:14:13','账号1','姓名1','手机1','投诉标题1','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian1.jpg','投诉内容1','2021-04-02 23:14:13','是',''),(62,'2021-04-02 15:14:13','账号2','姓名2','手机2','投诉标题2','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian2.jpg','投诉内容2','2021-04-02 23:14:13','是',''),(63,'2021-04-02 15:14:13','账号3','姓名3','手机3','投诉标题3','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian3.jpg','投诉内容3','2021-04-02 23:14:13','是',''),(64,'2021-04-02 15:14:13','账号4','姓名4','手机4','投诉标题4','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian4.jpg','投诉内容4','2021-04-02 23:14:13','是',''),(65,'2021-04-02 15:14:13','账号5','姓名5','手机5','投诉标题5','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian5.jpg','投诉内容5','2021-04-02 23:14:13','是',''),(66,'2021-04-02 15:14:13','账号6','姓名6','手机6','投诉标题6','http://localhost:8080/ssm2855h/upload/jubaotousu_tupian6.jpg','投诉内容6','2021-04-02 23:14:13','是',''),(1617377134521,'2021-04-02 15:25:33','用户1','姓名1','13823888881','111','http://localhost:8080/ssm2855h/upload/1617377132368.jpg','111','2021-04-02 23:25:26','是','');
/*!40000 ALTER TABLE `jubaotousu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377057893 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2021-04-02 15:14:14',1,'用户名1','留言内容1','回复内容1'),(132,'2021-04-02 15:14:14',2,'用户名2','留言内容2','回复内容2'),(133,'2021-04-02 15:14:14',3,'用户名3','留言内容3','回复内容3'),(134,'2021-04-02 15:14:14',4,'用户名4','留言内容4','回复内容4'),(135,'2021-04-02 15:14:14',5,'用户名5','留言内容5','回复内容5'),(136,'2021-04-02 15:14:14',6,'用户名6','留言内容6','回复内容6'),(1617377057892,'2021-04-02 15:24:17',11,'用户1','111','2222');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377319353 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (41,'2021-04-02 15:14:13','类型1'),(42,'2021-04-02 15:14:13','类型2'),(43,'2021-04-02 15:14:13','类型3'),(44,'2021-04-02 15:14:13','类型4'),(45,'2021-04-02 15:14:13','类型5'),(46,'2021-04-02 15:14:13','6'),(1617377319352,'2021-04-02 15:28:39','7');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377296554 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (31,'2021-04-02 15:14:13','商品编号1','商品名称1','类型1',0,1,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian1.jpg','商品详情1',2,2,'2021-04-02 23:22:32',5),(32,'2021-04-02 15:14:13','商品编号2','商品名称2','类型2',2,2,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian2.jpg','商品详情2',2,2,'2021-04-02 23:14:13',2),(33,'2021-04-02 15:14:13','商品编号3','商品名称3','类型3',3,3,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian3.jpg','商品详情3',3,3,'2021-04-02 23:14:13',3),(34,'2021-04-02 15:14:13','商品编号4','商品名称4','类型4',4,4,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian4.jpg','商品详情4',4,4,'2021-04-02 23:14:13',4),(35,'2021-04-02 15:14:13','商品编号5','商品名称5','类型5',5,5,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian5.jpg','商品详情5',5,5,'2021-04-02 23:14:13',5),(36,'2021-04-02 15:14:13','商品编号6','商品名称6','类型6',6,6,'http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian6.jpg','商品详情6',6,6,'2021-04-02 23:14:13',6),(1617377296553,'2021-04-02 15:28:15','1617377279254','11','类型1',11,11,'http://localhost:8080/ssm2855h/upload/1617377287509.jpg','<p>111</p><p><img src=\"http://localhost:8080/ssm2855h/upload/1617377292040.jpg\"></p>',0,0,'2021-04-02 23:31:52',3);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouhou`
--

DROP TABLE IF EXISTS `shouhou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377162922 DEFAULT CHARSET=utf8 COMMENT='售后';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouhou`
--

LOCK TABLES `shouhou` WRITE;
/*!40000 ALTER TABLE `shouhou` DISABLE KEYS */;
INSERT INTO `shouhou` VALUES (81,'2021-04-02 15:14:14','账号1','姓名1','订单编号1','商品名称1','价格1','数量1','总计1','申请原因1'),(82,'2021-04-02 15:14:14','账号2','姓名2','订单编号2','商品名称2','价格2','数量2','总计2','申请原因2'),(83,'2021-04-02 15:14:14','账号3','姓名3','订单编号3','商品名称3','价格3','数量3','总计3','申请原因3'),(84,'2021-04-02 15:14:14','账号4','姓名4','订单编号4','商品名称4','价格4','数量4','总计4','申请原因4'),(85,'2021-04-02 15:14:14','账号5','姓名5','订单编号5','商品名称5','价格5','数量5','总计5','申请原因5'),(86,'2021-04-02 15:14:14','账号6','姓名6','订单编号6','商品名称6','价格6','数量6','总计6','申请原因6'),(1617377162921,'2021-04-02 15:26:02','用户1','姓名1','20214223221728108600','商品名称1','1','1','1','<p>111<img src=\"http://localhost:8080/ssm2855h/upload/1617377160577.jpg\"></p>');
/*!40000 ALTER TABLE `shouhou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617376979237 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1617376921896,'2021-04-02 15:22:01',11,31,'shangpinxinxi','商品名称1','http://localhost:8080/ssm2855h/upload/shangpinxinxi_tupian1.jpg'),(1617376979236,'2021-04-02 15:22:58',11,91,'xinwenxinxi','标题1','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','y3inoxjcijjjwu6csmka32rn4jw778hf','2021-04-02 15:21:15','2021-04-02 16:31:37'),(2,1,'abo','users','管理员','73q74678ontiitozc84tntl8hi62e71m','2021-04-02 15:26:45','2021-04-02 16:26:45');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-02 15:14:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenleibie`
--

DROP TABLE IF EXISTS `xinwenleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leibie` (`leibie`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377343685 DEFAULT CHARSET=utf8 COMMENT='新闻类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenleibie`
--

LOCK TABLES `xinwenleibie` WRITE;
/*!40000 ALTER TABLE `xinwenleibie` DISABLE KEYS */;
INSERT INTO `xinwenleibie` VALUES (51,'2021-04-02 15:14:13','类别1'),(52,'2021-04-02 15:14:13','类别2'),(53,'2021-04-02 15:14:13','类别3'),(54,'2021-04-02 15:14:13','类别4'),(55,'2021-04-02 15:14:13','类别5'),(56,'2021-04-02 15:14:13','6'),(1617377343684,'2021-04-02 15:29:03','7');
/*!40000 ALTER TABLE `xinwenleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenxinxi`
--

DROP TABLE IF EXISTS `xinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377409603 DEFAULT CHARSET=utf8 COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenxinxi`
--

LOCK TABLES `xinwenxinxi` WRITE;
/*!40000 ALTER TABLE `xinwenxinxi` DISABLE KEYS */;
INSERT INTO `xinwenxinxi` VALUES (91,'2021-04-02 15:14:14','标题1','类别1','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian1.jpg','内容1','2021-04-02 23:14:14','2021-04-02 23:23:08',4),(92,'2021-04-02 15:14:14','标题2','类别2','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian2.jpg','内容2','2021-04-02 23:14:14','2021-04-02 23:21:18',3),(93,'2021-04-02 15:14:14','标题3','类别3','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian3.jpg','内容3','2021-04-02 23:14:14','2021-04-02 23:14:14',3),(94,'2021-04-02 15:14:14','标题4','类别4','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian4.jpg','内容4','2021-04-02 23:14:14','2021-04-02 23:14:14',4),(95,'2021-04-02 15:14:14','标题5','类别5','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian5.jpg','内容5','2021-04-02 23:14:14','2021-04-02 23:14:14',5),(96,'2021-04-02 15:14:14','标题6','类别6','http://localhost:8080/ssm2855h/upload/xinwenxinxi_fengmian6.jpg','内容6','2021-04-02 23:14:14','2021-04-02 23:14:14',6),(1617377409602,'2021-04-02 15:30:08','11','类别2','http://localhost:8080/ssm2855h/upload/1617377399860.jpg','<p>1111</p><p><img src=\"http://localhost:8080/ssm2855h/upload/1617377407268.jpg\"></p>','2021-04-02 23:29:51','2021-04-02 23:32:01',2);
/*!40000 ALTER TABLE `xinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617377221472 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-02 15:14:13','用户1','123456','姓名1','女','13823888881','773890001@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-02 15:14:13','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-02 15:14:13','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-02 15:14:13','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-02 15:14:13','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-02 15:14:13','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm2855h/upload/yonghu_zhaopian6.jpg','备注6'),(1617377221471,'2021-04-02 15:27:01','11','11','11','男','13800138000','','http://localhost:8080/ssm2855h/upload/1617377217908.jpg','111');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-03 11:14:10
